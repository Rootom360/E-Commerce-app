import 'package:ecommerceapp/home/components/categories.dart';
import 'package:ecommerceapp/home/components/discount_banner.dart';
import 'package:ecommerceapp/home/components/popular_produc.dart';
import 'package:ecommerceapp/home/components/product_card.dart';
import 'package:ecommerceapp/home/components/section_title.dart';
import 'package:ecommerceapp/home/components/special_offers._card.dart';
import 'package:ecommerceapp/home/home_header.dart';
import 'package:ecommerceapp/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HomeHeader(),
            SizedBox(height: 15),
            DiscountBanner(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 20),
            SpecialOfferCard(),
            SizedBox(height: 20),
            PopularProduct(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
