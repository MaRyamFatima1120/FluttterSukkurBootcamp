import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title:const Text("My First Flutter App"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body:Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0) ,
                  width: double.infinity,
                  height: 70,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0) ,
                  width: double.infinity,
                  height: 70,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical:10.0) ,
                  width: double.infinity,
                  height: 70,
                  color: Colors.deepPurple,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 100,
                  height: 350,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 100,
                  height: 350,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 100,
                  height: 350,
                  color: Colors.deepPurple,
                ),

              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
