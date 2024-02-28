import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {

   String image;
   int quantityBought;
   int total;
   String itemName;

   CartItem({required this.image,required this.quantityBought,required this.total,required this.itemName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage('$image'),),
      title: Text('$itemName'),
      trailing:  SizedBox(
          width: 150,
          child: Row(children:
                     [Icon(Icons.production_quantity_limits_rounded),
                     Text(
                       style: TextStyle(fontSize: 17),
                      '$quantityBought'),
                      Spacer(),
                      Icon(Icons.currency_rupee_sharp),
                      Text(
                       style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      '$total'),
                      Spacer(),
                     ]),
                  )
    );
  }
}