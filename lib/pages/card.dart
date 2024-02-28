import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdCard extends StatelessWidget {
  List<String> adCardList = [];
  double height;
  Function()? onPressed;

  AdCard(
      {required this.adCardList,
      required this.height,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Card(
                child: InkWell(
                onTap: onPressed,
                splashColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(image: AssetImage('assets/${adCardList[0]}')),
                ),
              )),
            ),
            Expanded(
              flex: 1,
              child: Card(
                  child: InkWell(
                onTap: onPressed,
                splashColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(image: AssetImage('assets/${adCardList[1]}')),
                ),
              )),
            ),
            Expanded(
              flex: 1,
              child: Card(
                  child: InkWell(
                onTap: onPressed,
                splashColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(image: AssetImage('assets/${adCardList[2]}')),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
