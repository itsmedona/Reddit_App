import 'package:flutter/material.dart';

class FollowingList extends StatelessWidget {
  final List<String> followingList = [
    '_5h4ron_',
    '_rozemathew_',
    '_lil_boo_',
    '_mr.voyager_',
    '_j0smi_',
    '_dreamy_girl_',
    'aswa_ashu',
    'vijay_krishna',
    '_vadakkan_',
    'kalathiparamban__',
    '_vaayaadi.mariyam_',
    'binson_bk',
    's0nu_jzf',
    '_t0j0',
    '_.lyrical_girl._'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Following List'),
      ),
      body: ListView.builder(
        itemCount: followingList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
            ),
            title: Text(followingList[index]),
            onTap: () {},
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          );
        },
      ),
    );
  }
}
