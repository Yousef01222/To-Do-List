import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/models/task_modle.dart';
import 'package:to_do_list/screen/task_add.dart';
import 'package:to_do_list/widget/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreeen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, builder: (context){
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child:  TaskAdd((newTasktitle){
                  // setState(() {
                  //   taskes.add(Task(name:newTasktitle));
                  //   Navigator.pop(context);
                  // });
                  
                })),
            );
          });
        },
        child: Icon(Icons.add, color: Colors.teal[600]),
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 80, left: 20, bottom: 80, right: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'TODOLIST',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
             Text(
              '${Provider.of<TaskData>(context).taskes.length} Task',
              style:const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child:  Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
