import 'dart:convert';

import 'package:final_project/view/home_screen.dart';
import 'package:final_project/view/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  List<Coffee> _data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    coffeeApi();
  }

  Future<List<Coffee>> coffeeApi() async {
    final response =
        await http.get(Uri.parse("https://fake-coffee-api.vercel.app/api"));

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);

      setState(() {
        _data = jsonResponse.map((json) => Coffee.fromJson(json)).toList();
      });

      print(_data.first.name);
      print(_data.first.description);
    }

    return _data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1abb9c),
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order",
                  style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              Text("You can get your desired size of coffee, or",
                  style: GoogleFonts.poppins(
                      fontSize: 8.58,
                      fontWeight: FontWeight.w400,
                      color: Colors.white))
            ],
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  color: const Color(0xffe6e5e5),
                  child: Row(
                    children: [
                      Expanded(
                        flex:4,
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _data[index].name ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 29,
                                    fontFamily: "Food Delight",
                                    color: Color(0xff1abb9c)),
                              ),
                              Text(_data[index].description ?? "",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.black))),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("Price:\$${_data[index].price.toString()}",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: Colors.black))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    _data[index].imageUrl ?? "",
                                  ),
                                  fit: BoxFit.fitHeight)),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
