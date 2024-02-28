import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/card.dart';
import 'package:flutter_application_1/pages/carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  List<Card> restuarantList = [
    Card(child: Image(image: AssetImage('assets/res1.png'))),
    Card(child: Image(image: AssetImage('assets/res2.png'))),
    Card(child: Image(image: AssetImage('assets/res5.png')))
  ];

  List<String> listA = ['res3.png','res4.png','res5.png'];
  List<String> listB = ['res2.png','res5.png','res1.png'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.amber[900],
                  child: IconButton(
                    onPressed: () {
                      print('Clicked on profile icon');
                    },
                    icon: const Icon(Icons.person_2_rounded),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    color: Colors.amber[900],
                    child: const Card(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              leading: Icon(Icons.location_pin),
                              title: Text('My Location'),
                              subtitle: Text('detailed location goes here'),
                              dense: true,
                            ),
                          ]),
                    )),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            ListTile(
              tileColor: Colors.white54,
              leading: Icon(Icons.local_offer_sharp),
              title: Text('Some offers'),
              subtitle: Text('description goes here'),
            ),
            Card(
              child: SizedBox(
                  height: 100,
                  width: 500,
                  child: Carousel(carouselList: restuarantList)),
            ),
            Card.outlined(
              child: Text('IN THE SPOTLIGHT'),
            ),
            AdCard(adCardList: listA, height: 120,width: 30, onPressed: (){
              Navigator.pushNamed(context, '/menu');
            },),
            Card(
              child: Text('QUICK PICKS FOR YOU'),
            ),
            AdCard(adCardList: listA, height: 60,width: 30,onPressed: (){
              Navigator.pushNamed(context, '/menu');
            }),
            AdCard(adCardList: listB, height: 60,width: 30,onPressed: (){
              Navigator.pushNamed(context, '/menu');
            })
          ],
        ),
        backgroundColor: Colors.white70,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.help_center_outlined),
          onPressed: () {
            Navigator.pushNamed(context, '/go');
          },
        ),
      ),
    );
  }
}
