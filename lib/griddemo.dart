import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyGrid(),
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
    ),
  );
}

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyGrid"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView(
            // ignore: sort_child_properties_last
            children: [

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.whatsapp, size: 50, color: Colors.white,),
                    Text("Whatsapp", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
              ),


               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.mail, size: 50, color: Colors.white,),
                    Text("G Mail", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
              ),


               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.home, size: 50, color: Colors.white,),
                    Text("Home", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
              ),


               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.alarm, size: 50, color: Colors.white,),
                    Text("Alarm", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
              ),


            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ),
      ),
    );
  }
}
