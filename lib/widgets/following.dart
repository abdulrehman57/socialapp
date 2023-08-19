import 'package:ar_social_app/models/user.dart';
import 'package:flutter/material.dart';

import '../models/db.dart';

class FollowingWidget extends StatelessWidget {
  const FollowingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 90.0,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 18.0),
            scrollDirection: Axis.horizontal,
            itemCount: userList.length,
            itemBuilder: (BuildContext context, int index) {
              User user = userList[index];
              return CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(user.profileImageUrl!),
                foregroundColor: Colors.deepPurple,
              );
            },
          ),
        ),
      ],
    );
  }
}
