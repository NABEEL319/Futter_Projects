import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("ABC"),
            ),
            // gesture detector navigation k liy istamal hota hai 
            GestureDetector(onTap: (){},
              child: ListTile(
                title: Row(
                  children: [Icon(Icons.home), Text("Home")],
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.settings), Text("Settings")],
              ),
            ),
            ListTile(
              title: Row(
                children: [Icon(Icons.face), Text("Face")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
