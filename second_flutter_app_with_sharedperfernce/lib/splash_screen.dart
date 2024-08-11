import 'dart:async';
import 'package:flutter/material.dart';
import 'package:second_flutter_app_with_sharedperfernce/home_screen.dart';
import 'package:second_flutter_app_with_sharedperfernce/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN ="Login";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loginOrLogout();

    //Try  user is Logged in or not
 /*  */
  }
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome to",style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),),
            Text("Flutter Sukkur",style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 40,
            ),),
          ],
        ),
      ),

    );
  }

  void loginOrLogout() async{
    var sharedPreference = await SharedPreferences.getInstance();

    var isLoggedIn =sharedPreference.getBool(KEYLOGIN);


    
    Timer(const Duration(seconds: 3), (){
      if(isLoggedIn != null ){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        }
        else{
          //if User logout screen
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
        }
      }
      else{
        //First Time is Login
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
      }

    });
  }
}
