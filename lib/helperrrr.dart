import 'package:flutter/material.dart';

Widget listtilez(msg,icn,clr)
{
  return ListTile(
    trailing: Icon(icn),
    title: Text(msg),
    onTap:(){

    },
    

  );
}

//font styling

Widget fontstl(txt, sze,wat){
  return Text(txt,style: TextStyle(fontSize: sze),);
  
}

// 
final appabrr=Colors.green;