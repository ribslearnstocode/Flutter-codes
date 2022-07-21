//before starting you can download 6 pictures of a dice face and put them in a folder and decomment the asset and the first asset line. remove the first line and add assets/ instead. It can be any name but there the pictures should be stored. the last you need to do is follow me on my other socials: insta: rib_ss and linked in Ribence Kadel

import 'dart:math'; //this package is for random integer selecting widget.
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "dice",
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int diceNum = 1;

  changeDice() {
    setState(() {
      diceNum = Random().nextInt(6) +
          1; //this gives values rangin from 0 to 5. so the answer will never be 0 since 1 is always added.
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Dice roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              "assets/$diceNum.png",
              height: 250,
              width: 200,
            ),
          ),
          MaterialButton(
            onPressed: changeDice,
            child: Text("Roll"),
            color: Colors.blue,
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            "#Made By Ribence",
            style: TextStyle(
                color: Color.fromARGB(255, 54, 187, 28),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
