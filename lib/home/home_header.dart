import 'package:ecommerceapp/home/components/icon_button_with_counter.dart';
import 'package:flutter/material.dart';

import 'components/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          // IconButtonWithCounter(
          //   svgSrc: "assets/icons/Bell.svg",
          //   numOfItems: 3,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
