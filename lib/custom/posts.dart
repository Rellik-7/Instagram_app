import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String img_path;
  final String circle_path;
  final String name;
  final String comment;
  const Post({Key? key, required this.img_path, required this.circle_path, required this.comment, required this.name}) : super(key: key);


  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool likeSet = true;
  void onTapLike(){
    setState(() {
      likeSet = !(likeSet);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage(widget.circle_path),
              radius: 37
          ),
          title: Text(widget.name),
          subtitle: Text('Tokyo, Japan'),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(widget.img_path),
            ),
          ),
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10.0,10.0,5.0,10.0),child: IconButton(icon: Icon(Icons.favorite,size: 30.0,color:(likeSet)?Colors.grey[600]:Colors.red,), onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:(likeSet)?Text('You have liked the post'):Text('You have unliked the post')));
              onTapLike();
              },
            )),
            Padding(padding: EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0),child: IconButton(icon: Icon(Icons.chat_bubble_outline,size: 30.0), onPressed: () {  },)),
            Padding(padding: EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0),child: IconButton(icon: Icon(Icons.send,size: 30.0), onPressed: () {  },)),

          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage('images/dp1.jpg'),
                  radius: 10
              ),
            ),
            Text('Liked By Ninja Stan and 13 others'),


          ],
        ),
        Padding(padding: EdgeInsets.all(10.0) ,child: Text(widget.comment)),
        Divider(
          height: 10,
          color: Colors.grey[600],
        ),

      ],
    );
  }
}
