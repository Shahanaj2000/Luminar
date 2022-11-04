import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(GridViewExtend());
}

class GridViewExtend extends StatelessWidget {
  const GridViewExtend({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ), 
      home: Scaffold(
        appBar: AppBar(
          title: Text("GRID EXTEND"),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          children: [
            _buildGridItem(1),
            _buildGridItem(2),
            _buildGridItem(3),
            _buildGridItem(4),
            _buildGridItem(5),
            _buildGridItem(6),
            _buildGridItem(7),
            _buildGridItem(8),
            _buildGridItem(9),
            _buildGridItem(10),
 

          ],
        ),
      ), 
    );

  }

  Widget _buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey,
        //alignment: Alignment.center,
        child: Center(
          child: Text(
            "$index",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}