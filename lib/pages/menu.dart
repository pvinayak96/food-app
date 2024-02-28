import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/carousel.dart';
import 'package:flutter_application_1/pages/cartProvider.dart';
import 'package:flutter_application_1/pages/dishCard.dart';
import 'package:flutter_application_1/pages/miniCart.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Card> offersList = [
    Card(child: Image(image: AssetImage('assets/off1.png'))),
    Card(child: Image(image: AssetImage('assets/off2.png'))),
    Card(child: Image(image: AssetImage('assets/off3.png')))
  ];

  List<Card> topPick = [
    Card(child: Image(image: AssetImage('assets/img3.png'))),
    Card(child: Image(image: AssetImage('assets/img4.png'))),
    Card(child: Image(image: AssetImage('assets/img5.png')))
  ];

  List<DishCard> dishes = [
    DishCard(
        dishName: 'Pizza',
        description: 'Regular Pizza',
        image: 'img3.png',
        pricePerUnit: 230),
    DishCard(
        dishName: 'Maggie',
        description: 'Maggie Noodles',
        image: 'img5.png',
        pricePerUnit: 145),
    DishCard(
        dishName: 'Noodles',
        description: 'Noodles',
        image: 'img6.png',
        pricePerUnit: 35),
    DishCard(
        dishName: 'Pan Cake',
        description: 'Hot Pan Cake',
        image: 'img4.png',
        pricePerUnit: 100),
    DishCard(
        dishName: 'Cookies',
        description: '500g cookies packed',
        image: 'img5.png',
        pricePerUnit: 223),
    DishCard(
        dishName: 'Nuggets',
        description: 'Chicken Nuggets',
        image: 'img7.png',
        pricePerUnit: 60),
    DishCard(
        dishName: 'Chocolate Lava Cake',
        description: 'Lava Cake',
        image: 'img8.png',
        pricePerUnit: 125),
  ];

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
            leading: Icon(Icons.restaurant_menu_outlined),
            title: Text(
                style: TextStyle(fontWeight: FontWeight.w800),
                'Restaurant Name'),
            subtitle: Row(
              children: [
                Icon(Icons.rate_review_rounded),
                SizedBox(width: 5),
                Text('4.7'),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                height: 100,
                width: 500,
                child: Carousel(carouselList: offersList),
              ),
            ),
            ListTile(
              title: Row(children: [
                Icon(Icons.food_bank_outlined),
                Spacer(flex: 1),
                Text('Menu'),
                Spacer(flex: 1),
                Icon(Icons.food_bank_outlined),
              ]),
            ),
            SizedBox(
                height: 30,
                child: SearchBar(
                  leading: Icon(Icons.search_off_outlined),
                )),
            SizedBox(
              height: 5,
            ),
            Card.outlined(
              child: Text('TOP PICKS'),
            ),
            SizedBox(height: 60, child: Carousel(carouselList: topPick)),
            ...dishes,
            SizedBox(height: 60)
          ],
        ),
      ),
       bottomSheet: cartProvider.dishesInCart.length>0?MiniCart():Text('Add items to cart'),      
    );
  }
}
