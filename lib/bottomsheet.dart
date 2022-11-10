import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheet(),
  ),);
}

class BottomSheet extends StatelessWidget {

  void _show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding:  EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom + 100 ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: "Name"),
              ),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Age"),
              ),

              SizedBox(
                height: 10,
              ),

              ElevatedButton(onPressed: () => Navigator.of(context) child: Text("Submit"), )
            ],
          ),
        
      ),
    );
  }

  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BPTTOM SHEET"),
      ),

      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _show(context),
      ),
    );
  }
}