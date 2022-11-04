import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: GridCustom(),
  ),);
}

class GridCustom extends StatelessWidget {
  const GridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID CUSTOM"),
      ),
      body: GridView.custom(
        cacheExtent: 150,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return _buildGridItem(index);
          }
        ),
      ),
    );
  }
  Widget _buildGridItem(int index) {
    return Card(
      color: Colors.red,
      // alignment: Alignment.center,
      child: Center(
        child: Text(
          "$index",
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}