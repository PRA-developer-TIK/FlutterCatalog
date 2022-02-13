import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "dart:convert";
import "package:google_fonts/google_fonts.dart";
import 'package:sampleapp/models/catalog.dart';
import 'package:sampleapp/utils/routes.dart';
import 'package:sampleapp/widgets/homePageWidgets/catalog_header.dart';
import 'package:sampleapp/widgets/homePageWidgets/catalog_image.dart';
import 'package:sampleapp/widgets/homePageWidgets/catalog_list.dart';
import 'package:sampleapp/widgets/theme.dart';

import "package:velocity_x/velocity_x.dart";

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
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
            backgroundColor: MyTheme.darkBluish,
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            child: Icon(CupertinoIcons.cart)),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (catalogModel.items != null && catalogModel.items.isNotEmpty)
                  CatalogList().py1().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
