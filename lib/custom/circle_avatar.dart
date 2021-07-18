import 'package:flutter/material.dart';

class circleAvatar extends StatelessWidget {
  final String img_url;

  const circleAvatar({Key? key, required this.img_url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 37,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          backgroundImage: AssetImage(img_url),
          radius: 35
      ),
    );

  }
}
