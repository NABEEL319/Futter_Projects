import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              'Ecom APP UI',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10, top: 10),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        suffixIcon: Icon(Icons.search_outlined),
                        border: OutlineInputBorder())),
                ///////////////////////////////
                SizedBox(
                  height: 20,
                ),
                abc('Iphone 12'),
                abc('Note 20 Ultra'),
                abc('Macbook Air'),
                abc('Macbook Pro'),
                abc('Gaming PC'),
                abc('Backlit Keyboard'),
                abc('Mercedes'),
                abc('Mutton'),
                abc('Roadster'),
                abc('Royal Field'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget abc(String name) {
  return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/bgs.png'),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text('5.0(23 Reviews)'),
      trailing: Text('S10'));
}
