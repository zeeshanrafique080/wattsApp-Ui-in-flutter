import 'package:flutter/material.dart';
import 'package:zeeapp/helperrrr.dart';
import 'package:zeeapp/tost.dart';

class drawerrs extends StatefulWidget {
  const drawerrs({Key? key}) : super(key: key);

  @override
  _drawerrsState createState() => _drawerrsState();
}

class _drawerrsState extends State<drawerrs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("zeeApp"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("first"),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("Second"),
                      value: 2,
                    ),
                  ])
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Zeeshan Rafique"),
              accountEmail: Text("zeeshan321@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("p"),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),

            ListTile(
              trailing: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
              tileColor: Colors.amber,
            ),

            ListTile(
              trailing: Icon(
                Icons.camera_alt,
              ),
              title: Text("Camera"),
              onTap: () {},
            ),

            //3
            ListTile(
              trailing: Icon(Icons.trending_down),
              title: Text("Trending"),
              onTap: () {},
            ),

            ListTile(
              trailing: Icon(Icons.share),
              title: Text(
                "Share",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                showToast("USER CLICK ON SHARE BUTTON");
              },
            ),

            listtilez("Notification", Icons.notification_add, Colors.green),
          ],
        ),
      ),
    );
  }
}
