import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/models/Product.dart';
import 'package:shopping/screens/details/componant/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg"),
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
