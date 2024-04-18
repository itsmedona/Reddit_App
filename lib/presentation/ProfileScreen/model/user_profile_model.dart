// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) => UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) => json.encode(data.toJson());

class UserProfileModel {
  int? status;
  Data? data;

  UserProfileModel({
    this.status,
    this.data,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => UserProfileModel(
    status: json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class Data {
  String? profileImage;
  String? username;
  String? firstName;
  String? bio;
  String? website;
  int? postCount;
  int? followersCount;
  int? followingCount;
  List<int>? images;

  Data({
    this.profileImage,
    this.username,
    this.firstName,
    this.bio,
    this.website,
    this.postCount,
    this.followersCount,
    this.followingCount,
    this.images,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    profileImage: json["profile_image"],
    username: json["username"],
    firstName: json["first_name"],
    bio: json["bio"],
    website: json["website"],
    postCount: json["post_count"],
    followersCount: json["followers_count"],
    followingCount: json["following_count"],
    images: json["images"] == null ? [] : List<int>.from(json["images"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "profile_image": profileImage,
    "username": username,
    "first_name": firstName,
    "bio": bio,
    "website": website,
    "post_count": postCount,
    "followers_count": followersCount,
    "following_count": followingCount,
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
  };
}
