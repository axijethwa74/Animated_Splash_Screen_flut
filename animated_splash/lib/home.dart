import'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),   
      ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: Container(
          child: const Text("home"),
        ),
      ),
    );
  }
}