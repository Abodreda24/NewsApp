import 'package:flutter/material.dart';
import 'package:news_app/Explore/search.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
           Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => search()));
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Clapped Articles",style: TextStyle(fontWeight: FontWeight.bold)),
      ),);
  }
}