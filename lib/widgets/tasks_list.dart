import 'package:flutter/material.dart' ;
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';

import 'package:todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart' ;

class TasksList extends StatelessWidget {
 

  
  @override
  Widget build(BuildContext context) {


    return Consumer<TaskData>(
      builder: (context,TaskData , child){
        return ListView.builder(
      itemCount:TaskData.tasks.length,
      itemBuilder: (context,index){ 
           return TaskWidget(
            name: TaskData.tasks[index].name,
             isChecked: TaskData.tasks[index].isDone ,
             voidCheckBox : ( newValue) {
            TaskData.updateTask(TaskData.tasks[index]);
          } ,
          ListTileDelete: (){
            TaskData.deleteTask(TaskData.tasks[index]) ;
          },
             );
      }) ;
      },
      
    ); 
  }
}


