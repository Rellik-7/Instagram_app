import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/custom/circle_avatar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(children:[SizedBox(width: 60,),Icon(Icons.lock,color: Colors.grey[600],), Text('Cool Avatar',style: TextStyle(color: Colors.grey[600]),),Icon(Icons.arrow_drop_down_sharp,color: Colors.grey[600],),]),
        backgroundColor: Colors.white,
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 0.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[600],
                  child: CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        backgroundImage: AssetImage('images/myav.jpg'),
                        radius: 45
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('\n  54\nPosts', style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('\n   832\nFollowers', style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('\n     43\nFollowing', style: TextStyle(fontSize: 18),),
              ),

            ],
          ),
          SizedBox(height: 17,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Cool Avatar\nWorks at Living and Loving\nRemember the lesson, not the disappointment.',style: TextStyle(fontSize: 15),),
          ),
          Center(
            child: SizedBox(
              width: 360,
              height: 32,
              child: ElevatedButton(onPressed: (){

              },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(width: 2.0, color: Colors.grey)

                ),
                child: Text('Edit your profile', style: TextStyle(fontSize: 17,color: Colors.grey[600]),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            children: [
              Image.asset('images/myav.jpg'),
              Image.asset('images/dp1.jpg'),
              Image.asset('images/dp2.jpg'),
              Image.asset('images/dp3.jpg'),
              Image.asset('images/dp4.jpg'),
              Image.asset('images/dp5.jpg'),
              Image.asset('images/myav.jpg'),
              Image.asset('images/dp1.jpg'),
              Image.asset('images/dp2.jpg'),
              Image.asset('images/dp3.jpg'),
              Image.asset('images/dp4.jpg'),
              Image.asset('images/dp5.jpg'),

            ],
            ),
          )
        ],
      ),

    );
  }
}
