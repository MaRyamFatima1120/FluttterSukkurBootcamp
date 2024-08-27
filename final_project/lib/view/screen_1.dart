import 'package:final_project/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

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
            Text("Why SLURP?",style:GoogleFonts.poppins(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colors.white
            )),
            Text(
                "SLURP is the first and only coffee membership",
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
                    image: AssetImage("assets/images/Icon (2).png",

                    ),
                fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
              child: Text("Coffee is a cherished beverage enjoyed by millions worldwide, and its importance goes beyond just being a morning ritual. It serves as a vital source of energy, providing a much-needed boost to start the day.",style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
              child: Text("The caffeine in coffee stimulates the central nervous system, enhancing alertness, concentration, and overall cognitive function. ",style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                color: Colors.black
              ),),
            )

        ],),
      )
    ));
  }
}
