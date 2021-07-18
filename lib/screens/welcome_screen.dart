import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Image.network("https://pngimage.net/wp-content/uploads/2018/06/instagram-font-png-1.png",width: 250),
            SizedBox(height: 150,),
            SizedBox(
              width: 325,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Log in',style: TextStyle(fontSize: 18),),
                 ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              width: 325,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/signup');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(width: 2.0, color: Colors.blue)

                ),
                child: Text('Sign Up', style: TextStyle(fontSize: 18,color: Colors.blue),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
