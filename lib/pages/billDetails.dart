import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class BillDetails extends StatefulWidget {
  int totalCartValue;
  double kms;
  double deliveryFee;
  double platformFee;
  double GST;

  BillDetails(
      {super.key,
      required this.totalCartValue,
      required this.kms,
      required this.deliveryFee,
      required this.platformFee,
      required this.GST});

  @override
  State<BillDetails> createState() => _BillDetailsState();
}

class _BillDetailsState extends State<BillDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      'Item Total'),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.currency_rupee,),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.scaleDown,
                          child: Text(
                              textAlign: TextAlign.right,
                              style: TextStyle(fontWeight: FontWeight.w500),
                              '${widget.totalCartValue}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      'Delivery Fee | ${widget.kms} kms'),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.currency_rupee),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.scaleDown,
                          child: Text(
                              textAlign: TextAlign.right,
                              style: TextStyle(fontWeight: FontWeight.w500),
                              '${widget.kms * widget.deliveryFee}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 14,
                    child: DottedLine(
                      lineThickness: 0.5,
                      dashColor: Colors.black54,
                      dashLength: 0.8,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      'Platform Fee'),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.currency_rupee),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerRight,
                          child: Text(
                            textAlign: TextAlign.right,
                              style: TextStyle(fontWeight: FontWeight.w500),
                              '${widget.platformFee}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      'GST and Restaurant Charges'),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.currency_rupee),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerRight,
                          child: Text(
                              textAlign: TextAlign.right,
                              style: TextStyle(fontWeight: FontWeight.w500),
                              '${widget.GST}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 14,
                    child: DottedLine(
                      lineThickness: 0.5,
                      dashColor: Colors.black54,
                      dashLength: 0.8,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w900), 'To Pay'),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.currency_rupee),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit:BoxFit.scaleDown,
                          child: Text(
                              textAlign: TextAlign.right,
                              style: TextStyle(fontWeight: FontWeight.w900),
                              '${(widget.GST + (widget.kms * widget.deliveryFee) + widget.totalCartValue + widget.platformFee).round()}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
