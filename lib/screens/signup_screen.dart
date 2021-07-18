import 'package:flutter/material.dart';
class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,


      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://pngimage.net/wp-content/uploads/2018/06/instagram-font-png-1.png",width: 250),
            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: TextField(
                style: TextStyle(height: 0.5),
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),

                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: TextField(
                style: TextStyle(height: 0.5),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),

                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: TextField(
                style: TextStyle(height: 0.5),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),


                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: TextField(
                style: TextStyle(height: 0.5),

                decoration: InputDecoration(
                  labelText: 'Email Id',
                  border: OutlineInputBorder(),

                ),
              ),

            ),

            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 370,
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/control');
              },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,

                ),),
            ),
            SizedBox(height: 60,),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Don't have an an account? ",style: TextStyle(color: Colors.grey[600])),
                  TextSpan(text: "Sign Up",style: TextStyle(color: Colors.blue))

                ]
            ))
          ],
        ),
      ),
    );
  }
}
