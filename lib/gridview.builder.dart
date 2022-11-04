

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const GridViewBuilder());
}

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GridViewBuilder"),
        ),
        body: GridView.builder(
          cacheExtent: 500,
          physics: const ClampingScrollPhysics(),
          reverse: false,
          scrollDirection: Axis.horizontal,
          semanticChildCount: 50,
          shrinkWrap: true,
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  "$index",
                  style: const TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          }
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.yellow,
      
      ),
    );
  }
}