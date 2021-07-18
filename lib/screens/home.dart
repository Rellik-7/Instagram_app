import 'package:flutter/material.dart';
import 'package:insta_app/custom/circle_avatar.dart';
import 'package:insta_app/custom/gradient_ring_widget.dart';
import 'package:insta_app/custom/posts.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.network("https://pngimage.net/wp-content/uploads/2018/06/instagram-font-png-1.png",width: 150),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey[600],
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.live_tv_rounded,
              color: Colors.grey[600],
              size: 31,),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dm');
            },
            icon: Icon(Icons.send,
              color: Colors.grey[600],
              size: 31,),
          ),

        ],
      ),
      body: Column(
        children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp1.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp2.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp3.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp4.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp5.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp1.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp2.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp3.jpg',)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                child: WGradientRing(child: circleAvatar(img_url: 'images/dp4.jpg',)),
              ),

            ],

          ),
        ),
          Divider(
            height: 10,
            color: Colors.grey[600],
          ),
          Expanded(
            child: ListView(
              children: [
                Post(img_path: "images/dbs.webp",circle_path: "images/dp1.jpg",name: "Ninja Stan",comment: "This ep was Fire!",),
                Post(img_path: "images/tokyo1.jpg",circle_path: "images/dp2.jpg",name: "Sad Guy",comment: "That's a good shot!",),
                Post(img_path: "images/jjk.webp",circle_path: "images/dp3.jpg",name: "Epic Stan",comment: "This ep was Fire!",),
                Post(img_path: "images/bnha1.png",circle_path: "images/dp4.jpg",name: "Solo Lover",comment: "This ep was Fire!",),
                Post(img_path: "images/tokyo.jpg",circle_path: "images/dp5.jpg",name: "Chill Guy",comment: "This is a good shot!",),
                Post(img_path: "images/dbs.webp",circle_path: "images/dp1.jpg",name: "Ninja Stan",comment: "This ep was Fire!",),
                Post(img_path: "images/tokyo1.jpg",circle_path: "images/dp2.jpg",name: "Sad Guy",comment: "That's a good shot!",),
                Post(img_path: "images/jjk.webp",circle_path: "images/dp3.jpg",name: "Epic Stan",comment: "This ep was Fire!",),
                Post(img_path: "images/bnha1.png",circle_path: "images/dp4.jpg",name: "Solo Lover",comment: "This ep was Fire!",),
                Post(img_path: "images/tokyo.jpg",circle_path: "images/dp5.jpg",name: "Chill Guy",comment: "This is a good shot!",),



              ],
            ),

          )
        ]
      ),



    );
  }
}
