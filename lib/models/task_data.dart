import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_modle.dart';

class TaskData extends ChangeNotifier{
  List<Task> taskes= [
    Task(name: 'yousef'),
    Task(name: 'ali'),
    Task(name: 'nour'),
  ];
  void addtask(String newTasktitle){
    taskes.add(Task(name: newTasktitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.donechange();
    notifyListeners();
  }
  void deletTask(Task task){
    taskes.remove(task);
    notifyListeners();
  }
}