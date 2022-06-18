import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyplanner/dashboard_screen.dart';
import 'package:studyplanner/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService{
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  final firestore = FirebaseFirestore.instance;

  void LoginUser(context)async{
    try{
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
      await auth
          .signInWithEmailAndPassword
        (email: email.text, password: password.text)
          .then((value) => {
            print('User is Logged In'),
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
      (route) => false)
      });
    }catch(e) {
      Navigator.pop(context);
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text('Error Message'),
          content: Text(e.toString()),
        );
      });
    }
  }
  void RegisterUser(context)async{
    try{
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
      await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text)
          .then((value){
        print("User is Registered");
        firestore.collection("user").add({
          "name":name.text,
          "email":email.text,
          "phone":phone.text,
          "password":password.text,
          "uid":auth.currentUser!.uid
        });
        Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginScreen()));
      });
    }catch(e){
      Navigator.pop(context);
      print(e);}
  }
  void LogOutUser(context)async{
   await auth.signOut();
   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (C)=>LoginScreen()),
           (route) => false);
  }
}

