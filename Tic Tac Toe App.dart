import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
  var currentplayer = 'X';
  void drawxo(i) {
    if (grid[i] == '-') {
      setState(() {
        grid[i] = currentplayer;
        currentplayer = currentplayer == 'x' ? 'O' : 'x';
      });
    }
  }

  void reset() {
    setState(() {
      grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "tic tac toe",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: (Scaffold(
        appBar: AppBar(title: Text('Tic Tac Toe game')),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.black,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: grid.length,
                itemBuilder: (context, index) => Material(
                  color: Colors.amber,
                  child: InkWell(
                    onTap: () => drawxo(index),
                    splashColor: Colors.black,
                    child: Center(
                        child: Text(
                      grid[index],
                      style: TextStyle(fontSize: 50),
                    )),
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: reset,
                icon: Icon(Icons.refresh),
                label: Text('play again'))
          ],
        ),
      )),
    ));
  }
}
