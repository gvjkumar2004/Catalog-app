import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final techstack = "world";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutterinco"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $techstack!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
