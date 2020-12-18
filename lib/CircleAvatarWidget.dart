import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage('https://cn.gravatar.com/avatar/d14ec31e25e929d7802aaec2d61c4c96'),
      radius: 50,
      // child: Container(
      //   alignment: Alignment(0, .5),
      //   width: 200,
      //   height: 200,
      //   child: Text("兵长利威尔"),
      // ),
    );
  }
}
