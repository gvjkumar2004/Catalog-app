import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors
                .transparent), // Here I used appbar to implement a back button on the top left.
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red900.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(context.accentColor).make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "Tempor sanctus et sanctus sanctus diam et diam. Aliquyam rebum sadipscing aliquyam no duo clita labore takimata. Nonumy labore et magna erat ea vero, ea voluptua invidunt consetetur sit. Sea eos consetetur magna est sit ipsum sea amet, sadipscing amet aliquyam ea diam, ipsum diam et labore eos gubergren sed.."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
