import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
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
            child: Column(
              children: [
                cardInfo("Iphone 12"),
                cardInfo("Note 20 Ultra"),
                cardInfo("Macbook Air"),
                cardInfo("Macbook Pro"),
                cardInfo("Gamming PC"),
                cardInfo("Iphone 12"),
                cardInfo("Note 20 Ultra"),
                cardInfo("Macbook Air"),
                cardInfo("Macbook Pro"),
                cardInfo("Gamming PC"),
              ],
            ),
          )),
    );
  }
}

//////////////card view///////////////
Widget cardInfo(String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0, left: 8, top: 8),
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/mob.jpg")),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("5.0(23 Reviews)")
                  ],
                ),
                Row(
                  children: [
                    Text("20 Pieces"),
                    SizedBox(
                      width: 20,
                    ),
                    Text('90S'),
                  ],
                ),
                Text("Quantity: 1"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
