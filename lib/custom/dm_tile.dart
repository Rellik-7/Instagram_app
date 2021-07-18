import 'package:flutter/material.dart';

class dmTile extends StatelessWidget {
  final String circleImage;
  final String message;
  final String time;
  final String name;
  const dmTile({Key? key, required this.circleImage, required this.message, required this.time, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage(circleImage),
          radius: 37
      ),
      title: Text(name),
      subtitle: Text(message+'                            '+time),
      trailing: Icon(Icons.camera_alt_rounded,size: 30,),

    );
  }
}
