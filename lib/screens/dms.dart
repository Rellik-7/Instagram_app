import 'package:flutter/material.dart';
import 'package:insta_app/custom/dm_tile.dart';
class dmPage extends StatelessWidget {
  const dmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
        Container(
         height: 60,
         color: Colors.white,
        child: InkWell(

          child: Padding(
          padding: EdgeInsets.only(top: 8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Icon(
                  Icons.camera_alt,
                    color: Colors.blue,
                  size: 40,
                      ),
            Padding(padding:EdgeInsets.only(left: 17.0),child: Text('Camera',style: TextStyle(color: Colors.blue,fontSize: 17),))


    ],
    ),
    ),
    )
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[600], //change your color here
        ),
        centerTitle: true,
        title: Row(children:[SizedBox(width: 55,), Text('Cool Avatar',style: TextStyle(color: Colors.grey[600]),),Icon(Icons.arrow_drop_down_sharp,color: Colors.grey[600],),SizedBox(width: 95,),Icon(Icons.add,color: Colors.grey[600],)]),
    backgroundColor: Colors.white,
    ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: TextField(
              style: TextStyle(height: 0.5),
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),

              ),
            ),

          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView(
              children: [
                dmTile(circleImage: "images/dp1.jpg",message: "OK,got you",time: "now",name:"Ninja Stan"),
                dmTile(circleImage: "images/dp2.jpg",message: "OK,got you",time: "5m ago",name:"Sad Guy"),
                dmTile(circleImage: "images/dp3.jpg",message: "OK,got you",time: "7m ago",name:"Epic Stan"),
                dmTile(circleImage: "images/dp4.jpg",message: "OK,got you",time: "37m ago",name:"Solo Lover"),
                dmTile(circleImage: "images/dp5.jpg",message: "OK,got you",time: "1h ago",name:"Chill Guy"),
                dmTile(circleImage: "images/dp1.jpg",message: "OK,got you",time: "2h ago",name:"Ninja Stan"),
                dmTile(circleImage: "images/dp2.jpg",message: "OK,got you",time: "2h ago",name:"Sad Guy"),
                dmTile(circleImage: "images/dp3.jpg",message: "OK,got you",time: "5h ago",name:"Epic Stan"),
                dmTile(circleImage: "images/dp4.jpg",message: "OK,got you",time: "10h ago",name:"Solo Lover"),
                dmTile(circleImage: "images/dp5.jpg",message: "OK,got you",time: "12h ago",name:"Chill Guy"),

              ],
            ),
          ),

        ],
      ),

    );
  }
}
