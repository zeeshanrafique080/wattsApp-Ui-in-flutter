import 'package:flutter/material.dart';
import 'package:zeeapp/pages/customcard.dart';

class chatts extends StatefulWidget {
  const chatts({ Key? key }) : super(key: key);

  @override
  _chattsState createState() => _chattsState();
}

class _chattsState extends State<chatts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed:(){} ,child:Icon(Icons.chat) ,),
        body: ListView(
          children: [
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
          ],
        ),
      
    );
  }
}