import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Carousel extends StatelessWidget {

  List<Card> carouselList =[];

  Carousel({required this.carouselList}){
  }   

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
        options: CarouselOptions(height: 400.0,autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 1600),
        autoPlayCurve: Curves.fastOutSlowIn,),
        items: carouselList
      );
    
  }
}