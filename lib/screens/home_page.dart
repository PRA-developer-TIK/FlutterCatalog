import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AIRBNB "),
        backgroundColor: Color(0xFFFF5A5F),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Your Stays here ",
            style: GoogleFonts.cantataOne(
              textStyle: TextStyle(
                fontSize: 40,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
