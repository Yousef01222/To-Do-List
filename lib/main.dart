import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/screen/task_screeen.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(const TODOLIST());
}
class TODOLIST extends StatelessWidget {
  const TODOLIST({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreeen(),
      ),
    );
  }
}