import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskWidget extends StatelessWidget {
  
  
 bool isChecked ;
String name ;
void Function(bool?) voidCheckBox ;
void Function() ListTileDelete;
 TaskWidget({required this.isChecked , required this.name , required this.voidCheckBox , required this.ListTileDelete} ) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(name , style: isChecked?  TextStyle(decoration:TextDecoration.lineThrough) : null,),
      trailing:Checkbox(
        value: isChecked,
        onChanged: voidCheckBox ,
        
      ),
      onLongPress: ListTileDelete,
    );
  }
}

/*
(bool? newValue) {
          setState(() {
            isChecked = newValue!;
          });
        }

*/