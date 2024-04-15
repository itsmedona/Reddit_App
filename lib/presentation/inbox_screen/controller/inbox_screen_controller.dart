import 'dart:convert';
import 'package:http/http.dart' as http;

class NotificationService {
  static const String baseUrl = 'http://127.0.0.1:8000/notifications/';

  Future<List<Map<String, dynamic>>> fetchNotifications() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      // Convert JSON data to a list of maps
      List<Map<String, dynamic>> notifications =
          data.map((json) => json as Map<String, dynamic>).toList();
      return notifications;
    } else {
      throw Exception('Failed to load notifications');
    }
  }

  // Example function to create a notification
  Future<void> createNotification(
      String creator, String to, String notificationType,
      {required String image, required String comment}) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'creator': creator,
        'to': to,
        'notification_type': notificationType,
        'image': image,
        'comment': comment,
      }),
    );

    if (response.statusCode != 201) {
      // If the server did not return a 201 Created response,
      // throw an exception or handle the error here
      throw Exception('Failed to create notification');
    }
  }
}
