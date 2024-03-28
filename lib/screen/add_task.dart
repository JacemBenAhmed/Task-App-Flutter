import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;
import 'package:todo_app/models/task_data.dart';

class AddTask extends StatelessWidget {


  Function addTaskCallBack ;
  AddTask({ required this.addTaskCallBack}) ;
  
  @override
  Widget build(BuildContext context) {

    String? newTask ;

    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ 
        Text("Add Task" , style: TextStyle( 
          fontSize: 30 , 
          fontWeight: FontWeight.bold ,
          color: Colors.indigo[400] , 
          
        ),
        textAlign: TextAlign.center
        ,) ,
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText){
            newTask=newText ;

          },
        ) ,
        SizedBox(height: 20,),
        TextButton(onPressed: (){
          Provider.of<TaskData>(context , listen: false).addTask(newTask!) ;
          Navigator.pop(context) ;
        },
         child: Text("ADD Task " , style: TextStyle(color: Colors.white),)  , style: TextButton.styleFrom(
          backgroundColor: Colors.teal , 
         
        ),)
      ],),
    );
  }
}