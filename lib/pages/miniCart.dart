import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartProvider.dart';
import 'package:provider/provider.dart';

class MiniCart extends StatefulWidget {
  const MiniCart({super.key});

  @override
  State<MiniCart> createState() => _MiniCartState();
}

class _MiniCartState extends State<MiniCart> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            color: Colors.green[800],
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 2,
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.w700),
                      '${cartProvider.dishesInCart.length} ${cartProvider.dishesInCart.length==1?'Item added':'Items added'}'),
                ),               
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/cart'),
                    child: Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black87),
                        'View Cart'),
                  ),
                )
              ],
            ),
          );
        });
  }
}
