import 'package:flutter/material.dart';


InputDecoration AppInputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 10),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle AppElevatedButton(){
  return ElevatedButton.styleFrom(

    padding: EdgeInsets.all(23),
    backgroundColor: Colors.green,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    )
  );
}

SizedBox AppSizeBox(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}

