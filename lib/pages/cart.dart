
import 'package:flutter_application_1/pages/billDetails.dart';
import 'package:flutter_application_1/pages/cartItem.dart';
import 'package:flutter_application_1/pages/deliveryInstructions.dart';
import 'package:flutter_application_1/pages/offersAndBenefits.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartProvider.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.sizeOf(context).height * 1,
        color: Colors.white60,
        child: Consumer<CartProvider>(
          builder: (context, provider, _) {
            return SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.builder(
                      itemCount: provider.dishesInCart.length,
                      itemBuilder: ((context, index) {
                        List<CartItem> list = provider.dishesInCart;
                        return list[index];
                      })),
                ),
                 SizedBox(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        'Offers & benefits'),
                    ),
                  ),
                ),
                Offers(),
                SizedBox(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        'Delivery instructions'),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DeliveryInstructions()),
                SizedBox(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        'Bill details'),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      color: Colors.white,
                      child: BillDetails(totalCartValue: provider.totalCartValue(), kms: 4.4, deliveryFee: 10, platformFee: 3, GST: 10.54)),
                  ),
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}
