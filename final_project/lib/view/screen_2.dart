import 'package:final_project/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth =MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1abb9c),
          leading:IconButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
              icon:const Icon(Icons.arrow_back_ios)
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Endless Coffee",style:GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              )),
              Text(
                  "You can get your desired size of coffee, or",
                  style:GoogleFonts.poppins(
                      fontSize: 8.58,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  )
              )
            ],
          ),

          iconTheme:const IconThemeData(
            color: Colors.white,
          ),

        ),
        body:SingleChildScrollView(
          child:
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                width: screenWidth,
                height: screenHeigth * 0.55,
                decoration: const BoxDecoration(
                  //color: Colors.pink,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Icon (3).png",

                      ),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                child: Text("The caffeine in coffee stimulates the central nervous system, enhancing alertness, concentration, and overall cognitive function. Additionally, coffee has social significance, often serving as a focal point for gatherings and conversations. Its rich aroma and diverse flavors offer a comforting experience, making it a favorite choice for relaxation and enjoyment. Whether for productivity or pleasure, coffee holds a special place in daily life.",style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),
              ),



            ],),
        )
    ));
  }
}
