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
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemCount: catalogModel.items.length,
                itemBuilder: (context, index) {
                  final item = catalogModel.items[index];

                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                    ),
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
