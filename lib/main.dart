import 'package:flutter/material.dart';


import 'package:todoapp/todoscreen/todopage.dart';

import 'counterapp/countpage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
