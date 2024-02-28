import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  List<String> adCardList = [];
  double height;
  double width;
  Function()? onPressed ;

  AdCard({required this.adCardList, required this.height, required this.width, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Card(
                child: InkWell(
                  onTap: onPressed,
                  splashColor:Colors.orangeAccent,
                  child: SizedBox(
                      height: height,
                      width: width,
                      child: Image(image: AssetImage('assets/${adCardList[0]}'))),
                )),
          ),
          Expanded(
            flex: 1,
            child: Card(
                child: InkWell(
                  onTap: onPressed,
                  splashColor:Colors.orangeAccent,
                  child: SizedBox(
                      height: height,
                      width: width,
                      child: Image(image: AssetImage('assets/${adCardList[1]}'))),
                )),
          ),
          Expanded(
            flex: 1,
            child: Card(
                child: InkWell(
                  onTap: onPressed,
                  splashColor:Colors.orangeAccent,
                  child: SizedBox(
                      height: height,
                      width: width,
                      child: Image(image: AssetImage('assets/${adCardList[2]}'))),
                )),
          ),
        ],
      ),
    );
  }
}
