import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final techstack = "world";

  @override
  Widget build(BuildContext context) {
    final dummList = List.generate(20, ((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutterinco App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummList[index],
              key: null,
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
