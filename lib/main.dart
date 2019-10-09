import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_page_screen.dart';
import 'screens/product_details.screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/product_details': (context) => ProductDetailScreen()
      },
      //home: HomePage(),
    );
  }
}
