import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
// import '../widgets/drawer.dart';
// import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final techstack = "world";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadData();
  }

  LoadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: MyTheme.darkBluishColor,
          child: Icon(CupertinoIcons.cart),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  catalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand()
              ],
            ),
          ),
        ));
  }
}
