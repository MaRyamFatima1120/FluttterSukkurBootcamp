import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_api/coffee_api/coffee_api_screen.dart';
import 'model.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({super.key});

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  List<Album> _data = [];
  bool _isLoading = false;

  //call api

  Future<List<Album>> fetchAlbum() async {

    setState(() {
      _isLoading =true;
    });
    final response = await http.get(Uri.parse(
      "https://jsonplaceholder.typicode.com/posts",
    ));

    if (response.statusCode == 200 || response.statusCode == 201) {


      final List<dynamic> jsonResponse = jsonDecode(response.body);
      setState(() {
        _data = jsonResponse.map((json) => Album.fromJson(json)).toList();

      });

      print(_data.first.title);
      print(_data.first.body);
      setState(() {
        _isLoading = false;
      });
      return _data;
    }
    return throw Exception('Failed to load album');
  }
//Post api
  Future<void> addAlbum(String title,String body) async{
    final response = await http.post(Uri.parse(
        "https://jsonplaceholder.typicode.com/posts"),
        headers: {
            "Content-type":"application/json; charset=UTF-8"
        },
      body: jsonEncode(
        {
          "title":title,
          "body":body,
        }
      )
    );

    if(response.statusCode ==201 || response.statusCode ==200){

      final Map<String,dynamic> jsonResponse =jsonDecode(response.body);
      print(response.statusCode);

    }


  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff121212),
          centerTitle: true,
          title: const Text(
            "Album List",
            style: TextStyle(color: Colors.white),
          ),
          titleSpacing: 2,
          actions: [
            IconButton(onPressed: (){
      
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoffeeApiScreen()));
            }, icon: const Icon(Icons.navigate_next_sharp,color: Colors.white ,))
          ],
        ),
        body: Center(
          child:_isLoading ?const CircularProgressIndicator(): ListView.builder(
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
      
                title: Text(_data[index].title ?? ""),
                subtitle: Text(_data[index].body ?? "...."),
      
      
              );
      
            },
          )
      
      
        ),
        floatingActionButton: FloatingActionButton(
         // onPressed: fetchAlbum,
          onPressed: (){
            addAlbum("New Title","NewBody");
          },
          child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
