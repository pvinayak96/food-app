import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/cartProvider.dart';
import 'package:flutter_application_1/pages/menu.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';

void main() {
  runApp(ChangeNotifierProvider( 
    create: (context) => CartProvider(),
    child: MaterialApp(
      home:  Home(),
      routes: 
         {'/home' : (context) =>  Home(),
          '/menu' : (context) =>  Menu(),
          '/cart' : (context) => Cart()
          },
    ),
  ));
}
