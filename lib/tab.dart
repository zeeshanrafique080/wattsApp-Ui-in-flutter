import 'package:flutter/material.dart';

import 'package:zeeapp/pages/chat.dart';

class tabsss extends StatefulWidget {
  const tabsss({Key? key}) : super(key: key);

  @override
  _tabsssState createState() => _tabsssState();
}

class _tabsssState extends State<tabsss> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New Broadcast"),
                value: "New Broadcast",
              ),
              PopupMenuItem(
                child: Text("WattsApp Web"),
                value: "WattsApp Web",
              ),
              PopupMenuItem(
                child: Text("Sterted Messsage"),
                value: "Sterated Message",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
        ],
        title: Text("wattsApp"),
        bottom: TabBar(
          indicatorColor: Colors.amber,
          controller: _controller,
          tabs: [
            Icon(Icons.camera_alt),
            Text("Chat"),
            Text("Status"),
            Text("Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("camera"),
          chatts(),
          Text("hh"),
          Text("Calls"),
        ],
      ),
    );
  }
}
