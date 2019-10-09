import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final String id;

  ProductItem({this.id, this.name, this.imagePath, this.price});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            //color: Colors.brown,
            height: 500,
          ),
          Positioned(
            bottom: 10.0,
            left: 0,
            right: 0,
            child: Card(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              elevation: 8.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                height: 190.0,
                padding: EdgeInsets.only(top: 25.00, left: 10.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("FEATURED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 3.0,
                            color: Color(0xFFB9B9B9),
                            fontSize: 14.00)),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/product_details',
                  arguments: this.id);
              // Navigator.push(context, MaterialPageRoute(builder: (_) {
              //   return ProductDetailScreen();
              // }));
            },
            child: Hero(
              tag: id,
              child: Container(
                height: 320.0,
                //color: Colors.green,
                width: screenSize.width,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.only(left: 50.0, right: 50.0),
                  padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF04609A),
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  width: screenSize.width,
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
