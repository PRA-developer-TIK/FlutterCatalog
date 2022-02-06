import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "dart:convert";
import "package:google_fonts/google_fonts.dart";
import 'package:sampleapp/models/catalog.dart';
import 'package:sampleapp/widgets/drawer.dart';
import 'package:sampleapp/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;

  final dummyList = List.generate(6, (index) => catalogModel.items[0]);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AIRBNB "),
        centerTitle: true,

        // backgroundColor: Color(0xFFFF5A5F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
