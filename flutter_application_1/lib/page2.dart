import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
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
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                tile(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ACCOUNT INFORMATION',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                //////////////
                textInfo("Full Name"),
                textFieldInfo("User"),
                textInfo("Email"),
                textFieldInfo("user@gmail.com"),
                textInfo("Phone"),
                textFieldInfo("+0900-786 01"),
                textInfo("Address"),
                textFieldInfo("New York,Random Street House No. 72"),
                textInfo("Gender"),
                textFieldInfo("Male"),
                textInfo("Date of Birth"),
                textFieldInfo("October 13, 1999"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tile() {
  return ListTile(
    leading: Icon(
      Icons.person,
      size: 150,
    ),
    title: Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          SizedBox(height: 35),
          Text(
            'User         ',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 15),
          Text(
            'abc@gmail.com',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 25),
          Text(
            'logout                 ',
            style: TextStyle(fontSize: 15, color: Colors.purple),
          ),
        ],
      ),
    ),
  );
}

Widget textInfo(String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 150.0),
    child: Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

Widget textFieldInfo(String name) {
  return TextField(
    decoration: InputDecoration(hintText: name),
  );
}
