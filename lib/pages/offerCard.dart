
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';


class OfferCard extends StatelessWidget {
  String offerType;
  String offerName;
  String offerDescription;

  OfferCard(
      {super.key,
      required this.offerType,
      required this.offerName,
      required this.offerDescription});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex:1,
        child: RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, backgroundColor: Colors.amber[800]
              ),
              '$offerType'),
          ),
        )
      ),
      Expanded(
        flex:4,
        child: ListTile(
          title: Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.w400), "$offerName"),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.amber[800]),
                        'Apply')),
              ),
            ],
          ),
          subtitle: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedLine(
                  lineThickness: 0.5,
                  dashColor: Colors.black54,
                  dashLength: 0.8,
                  lineLength: 300,
                ),
                SizedBox(
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      "Use code $offerName & $offerDescription"),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w200, color: Colors.black87),
                        '+More'))
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
