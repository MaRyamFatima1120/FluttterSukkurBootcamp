import 'package:flutter/material.dart';
import 'package:second_flutter_app_with_sharedperfernce/login_screen.dart';
import 'package:second_flutter_app_with_sharedperfernce/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffD9D9D9),
        title: const Text("Home Page", style: TextStyle(fontSize: 20)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () async{
            var sharePref=await SharedPreferences.getInstance();
            await sharePref.remove(SplashScreenState.KEYLOGIN);

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
          }, icon: Icon(Icons.logout_sharp,size: 30,))
        ],
      ),
      body: const Center(child: Text("Home Page",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
    ));
  }
}
