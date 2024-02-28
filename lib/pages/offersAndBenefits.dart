import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/offerCard.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(children: [
        OfferCard(offerType: 'FLAT OFF',
        offerName: 'DEALICIOUS',
        offerDescription: 'get flat 125 off',),
        OfferCard(offerType: '50% OFF',
        offerName: 'KOTAK125',
        offerDescription: 'get maximum discount upto 125 on orders above 500',),
        OfferCard(offerType: '20% OFF',
        offerName: 'TRYNEW',
        offerDescription: 'get 50% off on orders above 179. Maximum discount 100.',)
      ],),
    );
  }
}