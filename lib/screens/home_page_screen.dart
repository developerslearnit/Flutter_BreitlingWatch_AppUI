import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = productLists();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF6F2EF),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          children: <Widget>[
            Container(
              height: 110.00,
              child: Image.asset("assets/images/Logo_real.png"),
            ),
            ...products.map((product) {
              return ProductItem(
                  id: product.product_id,
                  name: product.product_name,
                  imagePath: product.product_sm_image,
                  price: product.product_price);
            }).toList(),

            //Product()
            //ProductItem(),
            SizedBox(
              height: 10.0,
            ),
            //ProductItem(),
            SizedBox(
              height: 10.0,
            ),
            // ProductItem(),
          ],
        ),
      ),
    );
  }
}
