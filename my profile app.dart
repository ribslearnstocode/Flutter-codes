import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "profile app",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("profile app"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Image.network(
              "https://www.biography.com/.image/t_share/MTM2OTI2NTY2Mjg5NTE2MTI5/justin_bieber_2015_photo_courtesy_dfree_shutterstock_348418241_croppedjpg.jpg",
              height: 300,
              width: 300,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Name:Ribence Kadel',
            style: TextStyle(
                fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text("Address: Kathmandu, Nepal", style: TextStyle(fontSize: 19)),
          SizedBox(height: 5),
          Text("Email: ribence.kadel456@gmail.com",
              style: TextStyle(fontSize: 19)),
          SizedBox(height: 240),
          Text("Developed by: Ribence Kadel "),
        ],
      ),
    ),
  ));
}
