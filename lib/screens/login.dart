import 'package:flutter/material.dart';
import '../helpers/signin.dart';
import './profile.dart';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              googleSigninBtn(),
            ],
          ),
        ),
      ),
    );
  }


  Widget googleSigninBtn() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signinWithGoogle().whenComplete(() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Profile();
          }));
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"),height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Sign in with Google',style: TextStyle(fontSize: 20,color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}