import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AIRBNB "),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Your Stays here ",
            style: TextStyle(
                fontSize: 40, color: Colors.amber, fontWeight: FontWeight.bold),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
