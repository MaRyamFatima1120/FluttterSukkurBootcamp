import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learn_api/coffee_api/model.dart';
import 'package:http/http.dart' as http;

class CoffeeApiScreen extends StatefulWidget {
  const CoffeeApiScreen({super.key});

  @override
  State<CoffeeApiScreen> createState() => _CoffeeApiScreenState();
}

class _CoffeeApiScreenState extends State<CoffeeApiScreen> {
  List<Coffee> _data = [];

  @override
  void initState() {
    super.initState();
    coffeeApi();
  }

  Future<List<Coffee>> coffeeApi() async {
    final response = await http.get(Uri.parse("https://fake-coffee-api.vercel.app/api"));
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      setState(() {
        _data = jsonResponse.map((json) => Coffee.fromJson(json)).toList();
      });

      print(_data.first.imageUrl);
      print(_data.first.name);
    }
    return _data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Coffee"),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              tileColor: const Color(0xffe6e5e5),
              //contentPadding: const EdgeInsets.all(10.0),


              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,


                children: [
                  Text(
                    _data[index].name ?? "",
                    style:const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(_data[index].description ?? "",
                    style:const TextStyle(fontSize: 12),),
                  Text("Price:\$${_data[index].price.toString()}")

                ],
              ),
              trailing: SizedBox(
                width: 100,
                height: 150,// Set width for the image
                child: Image.network(
                  _data[index].imageUrl ?? "",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
