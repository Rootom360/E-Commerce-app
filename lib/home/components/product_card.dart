import 'package:ecommerceapp/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRation = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRation,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product.title,
              style: TextStyle(
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[600]),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(7),
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? Colors.red[100]
                          : Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Colors.red
                            : Colors.grey[400]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
