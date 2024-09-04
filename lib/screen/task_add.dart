import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class TaskAdd extends StatelessWidget {
  final Function addtaskcallback;
   TaskAdd( this.addtaskcallback );
    
  @override
  Widget build(BuildContext context) {
    String? newTasktitle;   
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const  Text(
              textAlign: TextAlign.center,
              'Add Task',
            style: TextStyle(
              color: Colors.indigo,
            fontSize: 30),),
            TextField(
              autofocus: true,
           onChanged: (newText){
            newTasktitle=newText;
           },
            ),
           const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addtask(newTasktitle!);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18),),
                  
            )
          ],
        ),
      ),
    );
  }
}