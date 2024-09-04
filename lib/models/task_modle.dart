

//import 'package:flutter/material.dart';

class Task {
  final String name;
   bool isDone;
  
  Task({required this.name, this.isDone=false,} );

void donechange(){
  isDone=!isDone;
}
 
}