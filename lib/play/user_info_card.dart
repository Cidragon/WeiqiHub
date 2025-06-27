import 'package:flutter/material.dart';
import 'package:wqhub/game_client/user_info.dart';

class UserInfoCard extends StatelessWidget {
  final UserInfo userInfo;

  const UserInfoCard({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: Text(userInfo.username),
            subtitle: Text('${userInfo.winCount}W  ${userInfo.lossCount}L'),
            trailing: Text(userInfo.rank.toString(),
                style: TextTheme.of(context).displaySmall),
          )
        ],
      ),
    );
  }
}
