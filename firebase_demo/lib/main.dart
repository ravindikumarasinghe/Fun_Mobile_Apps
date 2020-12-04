import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
void main()=>runApp(MaterialApp(home: HomePage(),));

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Google Sign-In'),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(onPressed: _signInWithGoogle, child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 24),))
        ],
      ),
    ),
    );
  }

  _signInWithGoogle() async {
   final GoogleSignInAccount googleUser = await googleSignIn.signIn();
  }

}