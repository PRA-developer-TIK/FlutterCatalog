import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text("Welcome to flutter ${days}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
