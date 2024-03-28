import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screen/add_task.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart' ;

class TasksScreen extends StatelessWidget {
  



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=> AddTask( addTaskCallBack: (x){
         /* setState(() {
            tasks.add(Task(name: x, isDone: false));
            Navigator.pop(context) ;
          });*/
          
        })); 
      },
      backgroundColor: Colors.indigo[400], child: Icon(Icons.add),), 
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0 , top:60.0 , right: 20.0 , bottom: 80.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(children: [
              Icon(Icons.playlist_add_check , size: 40, color: Colors.white,) ,
              SizedBox(width: 20.0,) ,
              Text("My ToDo List ! ",style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 30.0),)
            ],) ,
            Text("${Provider.of<TaskData>(context).tasks.length} TASKS" , style: TextStyle(color: Colors.white , fontSize: 20.0),
            ) ,
            SizedBox(height: 30.0,),
            Expanded(
              child: Container(
                
                decoration: BoxDecoration(color: Colors.white , 
                borderRadius: BorderRadius.all(Radius.circular(40))
                ) ,
                child: TasksList( ),
              ),
            )
            
          ],),
        ),
      ),
    );
  }
}

