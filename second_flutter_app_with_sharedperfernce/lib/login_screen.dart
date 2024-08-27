import 'package:flutter/material.dart';
import 'package:second_flutter_app_with_sharedperfernce/home_screen.dart';
import 'package:second_flutter_app_with_sharedperfernce/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffD9D9D9),
          title: const Text("Login Page", style: TextStyle(fontSize: 20)),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //email
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Email",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return "Please enter a valid email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffD9D9D9),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffD9D9D9),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent)),
                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent)),
                      ),
                    ),
                  ),

                  //password
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: _password,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter  Password";
                        }
                        if (value.length < 8) {
                          return "Password must be at least 8 character long";
                        }
                        if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(value)) {
                          return "Password is too weak,it should contains letter,and numbers.";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffD9D9D9),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffD9D9D9),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder:  OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.redAccent),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedErrorBorder:  OutlineInputBorder(
                            borderSide:const  BorderSide(color: Colors.redAccent),
                          borderRadius: BorderRadius.circular(20.0),),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () async {

                      if(_formKey.currentState?.validate()??false){
                        //if Successfully Logged in

                        var sharedPref =await SharedPreferences.getInstance();
                        sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                      }
                    },
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 80,
                        decoration: BoxDecoration(
                            color: const Color(0xff23FB00),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
