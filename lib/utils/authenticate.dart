import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ride_share_app/screens/home_screen.dart';
import 'package:ride_share_app/screens/login_screen.dart';

class Authenticate{
  User? user;

  Widget? getLoggedInUser(BuildContext context){
    user = FirebaseAuth.instance.currentUser;

    if(user != null){
      return HomeScreen(user: user,);
    }else{
      return LoginScreen();
    }
  }
}