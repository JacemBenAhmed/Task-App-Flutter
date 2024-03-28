import 'package:flutter/material.dart' ;
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier
{
   List<Task> tasks = [ Task(name: "contest Codeforces tomorrow " , isDone: false ) ,
  Task(name: "Daily LeetCode", isDone: false) ,
  Task(name: "Make a TODO App with flutter " , isDone: true)
  ] ;

  void addTask(String task)
  {
    tasks.add(Task(name: task, isDone: false)) ;
    notifyListeners() ;
  }

  void updateTask(Task task)
  {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task)
  {
    tasks.remove(task) ;
    notifyListeners();
  }


}
