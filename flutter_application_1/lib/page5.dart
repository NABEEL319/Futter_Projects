import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  var lst = ["Nabeel", "Ali", "Bilal", "Haris"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        //on y-axis giving space.
        crossAxisSpacing: 20,
        // on x-axis giving space.
        mainAxisSpacing: 20,

        children: List.generate(lst.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,
              child: Center(child: Text(lst[index])),
            ),
          );
        }),
      ),
    );
  }
}
