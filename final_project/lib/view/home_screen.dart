import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:final_project/view/screen_1.dart';
import 'package:final_project/view/screen_1.dart';
import 'package:final_project/view/screen_2.dart';
import 'package:final_project/view/screen_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                //Coffee  Part
            Container(
              width: sizeWidth,
              height: sizeHeight * 0.4,
              color: const Color(0xff1ABB9C),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      width: 94,
                      height: 31,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Logo.png")),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: sizeWidth * 0.8,
                          height: sizeHeight * 0.35,
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/Hero Section Illustration.png",
                                  ),
                                  fit: BoxFit.fitHeight)),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 230,
                    left: 20,
                    child: Text(
                      "Unlimited",
                      style: TextStyle(
                          fontFamily: "Food Delight",
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                      top: 240,
                      left: 20,
                      child: Text(
                        "coffee",
                        style: GoogleFonts.poppins(
                            fontSize: 83,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            shadows: [
                              const Shadow(
                                  color: Colors.white30,
                                  offset: Offset(1.0, 5.0))
                            ]),
                      ))
                ],
              ),
            ),
            //Card Part
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                width: sizeWidth,
                height: sizeHeight * 0.3,
                child: Column(
                  children: [
                    Text(
                      "WHY SLURP?",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff1abb9c),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 10,
                      width: sizeWidth * 0.4,
                      decoration: BoxDecoration(
                          color: const Color(0xff1abb9c),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xff1abb9c).withOpacity(0.25),
                                offset: const Offset(0.0, 4),
                                blurRadius: 4,
                                spreadRadius: 4)
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> const ScreenOne()));
                          },
                          child: Card(
                            elevation: 4.0,
                            //color: Colors.pink,
                            child: SizedBox(
                              width: 112,
                              height: 153,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Icon (png).png",
                                    width: 68.76,
                                    height: 68.76,
                                  ),
                                  Text(
                                    "Why SLURP?",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "SLURP",
                                          style: GoogleFonts.poppins(
                                            fontSize: 6.58,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              " is the first and only coffee membership",
                                          style: GoogleFonts.poppins(
                                            fontSize: 6.58,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ]),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Learn more",
                                        style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const ScreenTwo()));
                          },
                          child: Card(
                            elevation: 4.0,
                            //color: Colors.pink,
                            child: SizedBox(
                              width: 112,
                              height: 153,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Icon.png",
                                    width: 68.76,
                                    height: 68.76,
                                  ),
                                  Text(
                                    "Endless Coffee",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " You can get your\n desired size of coffee, or",
                                    style: GoogleFonts.poppins(
                                      fontSize: 6.58,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Learn more",
                                        style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const ScreenThree()));
                          },
                          child: Card(
                            elevation: 4.0,
                            //color: Colors.pink,
                            child: SizedBox(
                              width: 112,
                              height: 153,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/Icon (1).png",
                                    width: 68.76,
                                    height: 68.76,
                                  ),
                                  Text(
                                    "Order",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "  Order from afar if you \nwish, and your coffee will",
                                    style: GoogleFonts.poppins(
                                      fontSize: 6.58,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Learn more",
                                        style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 10,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            //Third Last Part
            Container(
                height: sizeHeight * 0.7,
                width: sizeWidth,
                color: const Color(0xff1ABB9C),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "How to Join!",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: sizeWidth * 0.38,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.25),
                            offset: const Offset(0.0, 4),
                            blurRadius: 4,
                            spreadRadius: 4)
                      ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffF1F2E9).withOpacity(0.5),
                              shape: BoxShape.circle),
                        ),
                        Positioned(
                            left: 68,
                            child: Image.asset("assets/images/Group.png")),
                        Positioned(
                            top: 12,
                            left: -2,
                            child: Image.asset(
                                "assets/images/Clip path group.png")),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: sizeWidth,
                      height: sizeHeight * 0.1,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Text(
                                "1",
                                style: TextStyle(color: Color(0xff1abb9c)),
                              )),
                          const DottedDashedLine(
                            height: 0,
                            width: 80,
                            axis: Axis.horizontal,
                            dashColor: Colors.white,
                            dashSpace: 15,
                            dashWidth: 10,
                            strokeWidth: 2,
                          ),
                          DashedContainer(
                            dashColor: Colors.white,
                            boxShape: BoxShape.circle,
                            dashedLength: 15.0,
                            blankLength: 3.0,
                            strokeWidth: 6.0,
                            child: Container(
                                height: 23.0,
                                width: 23.0,
                                decoration: const BoxDecoration(
                                    color: Color(0xff1dbc9d),
                                    shape: BoxShape.circle),
                                child: const Center(
                                    child: Text(
                                  "2",
                                  style: TextStyle(color: Colors.white),
                                ))),
                          ),
                          const DottedDashedLine(
                            height: 0,
                            width: 80,
                            axis: Axis.horizontal,
                            dashColor: Colors.white,
                            dashSpace: 15,
                            dashWidth: 10,
                            strokeWidth: 2,
                          ),
                          DashedContainer(
                            dashColor: Colors.white,
                            boxShape: BoxShape.circle,
                            dashedLength: 15.0,
                            blankLength: 3.0,
                            strokeWidth: 6.0,
                            child: Container(
                                height: 23.0,
                                width: 23.0,
                                decoration: const BoxDecoration(
                                    color: Color(0xff1dbc9d),
                                    shape: BoxShape.circle),
                                child: const Center(
                                    child: Text(
                                  "3",
                                  style: TextStyle(color: Colors.white),
                                ))),
                          ),
                          const DottedDashedLine(
                            height: 0,
                            width: 80,
                            axis: Axis.horizontal,
                            dashColor: Colors.white,
                            dashSpace: 15,
                            dashWidth: 10,
                            strokeWidth: 2,
                          ),
                          DashedContainer(
                            dashColor: Colors.white,
                            boxShape: BoxShape.circle,
                            dashedLength: 15.0,
                            blankLength: 3.0,
                            strokeWidth: 6.0,
                            child: Container(
                                height: 23.0,
                                width: 23.0,
                                decoration: const BoxDecoration(
                                    color: Color(0xff1dbc9d),
                                    shape: BoxShape.circle),
                                child: const Center(
                                    child: Text(
                                  "4",
                                  style: TextStyle(color: Colors.white),
                                ))),
                          ),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Vector-1.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Step1".toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Download the App\nand create your Profile."
                                    .toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 7,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Clip path group-1.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Step2".toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Choose your\nMembership plan.",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 7),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/1.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Step3".toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Select your\ncoffee in the App.",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 7,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/Vector.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Step4".toUpperCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Show your\nQR-code at checkout\n& get your Hot Coffee!",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 7,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ]),
                  ],
                )),
            //Last
            Container(
              height: sizeHeight * 0.06,
              width: sizeWidth,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "\u00a92020 This Is A Company, All rights reserved.",
                  style: GoogleFonts.poppins(
                      fontSize: 11, color: const Color(0xff1abb9c)),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
