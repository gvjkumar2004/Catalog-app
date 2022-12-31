import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final techstack = "world";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutterinco App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $techstack!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
