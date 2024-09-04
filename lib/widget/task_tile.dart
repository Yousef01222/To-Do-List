import 'package:flutter/material.dart';
//import 'package:to_do_list/widget/task_check.dart';

class TaskTile extends StatelessWidget {
 
final  bool ischecked ;
final String tasktitle;
final void Function(bool?) checkboxchange;
final void Function() listtiledelet;

  TaskTile({ required this.ischecked, 
  required this.tasktitle,
   required this.checkboxchange,
   required this.listtiledelet,
   });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  Checkbox(
        
      activeColor: Colors.teal[500],

        value: ischecked,
        onChanged: checkboxchange,
        
          

         ),
         onLongPress:listtiledelet
        
     ); }
    
  }

