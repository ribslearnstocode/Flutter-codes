import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "score app",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void IncreaseNum() {
    setState(() {
      number++;
    });
  }

  void DecreaseNum() {
    setState(() {
       number--;
    });
   
  }

  void reset() {
    setState(() {
          number = 0;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: reset,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Score is',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 85,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
                child: Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: IncreaseNum),
            SizedBox(
              width: 90,
            ),
            RaisedButton(
                child: Text('Decrease', style: TextStyle(color: Colors.white)),
                color: Colors.red,
                onPressed: DecreaseNum)
          ])
        ],
      ),
    );
  }
}
