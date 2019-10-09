import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final String args = ModalRoute.of(context).settings.arguments;

    final product = findById(args);

    print(args);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(color: Colors.brown),
        Container(
          height: screenSize.height * 0.5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 1,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                )),
            height: (screenSize.height * 0.5) + 40.0,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 65.00,
                ),
                Text(
                  product.product_name,
                  style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    product.product_description,
                    style: TextStyle(
                      fontSize: 13.00,
                      color: Color(0xFF727272),
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: (screenSize.height * 0.5) + 20.0,
          width: screenSize.width,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
                tag: product.product_id,
                child: Image.asset(product.product_bg_image)),
          ),
        ),
        Positioned(
          bottom: 1,
          right: 0,
          left: 0,
          child: Container(
            width: screenSize.width,
            padding: EdgeInsets.only(top: 20.0, bottom: 85.0),
            decoration: BoxDecoration(
                color: Color(0xFFF5F2EF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: Text(
              product.product_price,
              style: TextStyle(
                fontSize: 20.00,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          right: 0,
          left: 0,
          child: Container(
            width: screenSize.width,
            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
            decoration: BoxDecoration(
                color: Color(0xFF04609A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: Text(
              "ADD TO CART",
              style: TextStyle(
                fontSize: 20.00,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ));
  }
}
