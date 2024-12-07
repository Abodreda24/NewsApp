import 'package:flutter/material.dart';
import 'package:news_app/Home/Explore_1.dart';
import 'package:news_app/Home/home.dart';
import 'package:news_app/mainsc.dart';


class splas extends StatefulWidget {
  const splas({super.key});

  @override
  State<splas> createState() => _splasState();
}

class _splasState extends State<splas> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Explore_1()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(248, 235, 249, 255),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: 
            Container(
              child: Container(
                child: Text("Lask",
                    style: TextStyle(
                        color: Color.fromARGB(198, 12, 16, 253),
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
