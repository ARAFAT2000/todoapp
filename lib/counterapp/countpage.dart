import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Center(
        child: Text(counter.toString(), style: Theme.of(context).textTheme.displayLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter = counter+1;
          setState(() {
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}