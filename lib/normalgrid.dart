import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GridNormal(),
    ),
  );
}

class GridNormal extends StatelessWidget {
  const GridNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LIST GRID"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              Container(
                // child: Text ("Data"),
                color: Colors.purple,
              ),

              Container(
                // child: Text ("Data"),
                color: Colors.purple,
              ),

              Container(
                // child: Text ("Data"),
                color: Colors.purple,
              ),

              Container(
                // child: Text ("Data"),
                color: Colors.purple,
              ),


            ],
          ),
        ),);
  }
}
