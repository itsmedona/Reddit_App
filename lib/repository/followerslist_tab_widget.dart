import 'package:flutter/material.dart';

class FollowersList extends StatelessWidget {
  final List<String> followersList = [
    'aswa_ashu',
    'vijay_krishna',
    '_vadakkan_',
    'kalathiparamban__',
    'binson_bk',
    '_vaayaadi.mariyam_',
    's0nu_jzf',
    '_t0j0',
    '_.lyrical_girl._',
    '_5h4ron_',
    '_rozemathew_',
    '_lil_boo_',
    '_mr.voyager_',
    '_j0smi_',
    '_dreamy_girl_',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Followers List'),
      ),
      body: ListView.builder(
        itemCount: followersList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
            ),
            title: Text(followersList[index]),
            onTap: () {},
            trailing: Container(
              color: Colors.black12,
              width: 10,
              height: 2,
              child: Text(
                'Following',
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          );
        },
      ),
    );
  }
}
