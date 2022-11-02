import 'package:flutter/material.dart';

void main() {
  runApp(GridViewww());
}
class GridViewww extends StatelessWidget {

// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text(
            'GridView ',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
        ),

        body: GridView.count(
          crossAxisCount: 2,

          children: 
            List.generate(20, (index) {
              return Card(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "Item $index",
                  ),
                ),
              );
              
            
            }, ),
          
        ),
      ),
    );
  }
}