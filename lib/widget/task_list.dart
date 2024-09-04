import 'package:flutter/material.dart';

import 'package:to_do_list/widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';
class TaskList extends StatelessWidget {
   
 
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
          itemCount: taskData.taskes.length,
          itemBuilder: (context, index) {
            return TaskTile(
                ischecked: taskData.taskes[index].isDone,
                tasktitle: taskData.taskes[index].name,
                checkboxchange: (newValue) {
                  taskData.updateTask(taskData.taskes[index]);
                  
                },
                listtiledelet: (){
                  taskData.deletTask(taskData.taskes[index]);
                }
                
                 
                );
          });
      },
      
    );

    //ListView(children: [
    //    TaskTile(tasktitle: taskes[0].name,ischecked: taskes[0].isDone,),
    //    TaskTile(tasktitle: taskes[1].name,ischecked: taskes[1].isDone),
    //    TaskTile(tasktitle: taskes[2].name,ischecked: taskes[2].isDone,),
    // ]);
  }
}
