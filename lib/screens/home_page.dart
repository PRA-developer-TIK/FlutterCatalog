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

  // final dummyList = List.generate(6, (index) => catalogModel.items[0]);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    catalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    // print(productData);
    setState(() {});
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
        child: (catalogModel.items != null && catalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: catalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: catalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
