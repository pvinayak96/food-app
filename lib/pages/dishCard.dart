import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartItem.dart';
import 'package:flutter_application_1/pages/cartProvider.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:provider/provider.dart';

class DishCard extends StatefulWidget {

  String dishName;
  String dishId;
  String description;
  String image;
  int pricePerUnit;
  int quantity = 0;

  DishCard({required this.dishName,required this.description,required this.image,
  required this.pricePerUnit, required this.dishId}){
    
  }

  @override
  State<DishCard> createState() => _DishCardState();
}

class _DishCardState extends State<DishCard> {

  bool showAddButton = true;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return ListTile(
        leading: Image(image: AssetImage('assets/${widget.image}'),),
        title: Text('${widget.dishName}'),
        subtitle: Text('${widget.description}'),
        trailing: SizedBox(
          width: 150,
          child: Row(children:
                     [Icon(Icons.currency_rupee_outlined),
                     Text(
                       style: TextStyle(fontSize: 17),
                      '${widget.pricePerUnit}'),
                      Spacer(),
                      if(showAddButton && !cartProvider.isItemPresent(widget.dishId))
                      ElevatedButton(onPressed: (){
                        setState(() {
                          cartProvider.add(CartItem(image: widget.image,
                                        itemName: widget.dishName, 
                                        quantityBought: 1,
                                        total: widget.pricePerUnit,
                                        itemId: widget.dishId, ));
                           this.showAddButton = false;
                        });
                      }, child: Text('Add'))
                      else
                        InputQty.int(
                          steps: 1,
                          initVal: cartProvider.quantityBoughtForItem(widget.dishId),                    
                          onQtyChanged: (value) => {
                              widget.quantity = value,
                              cartProvider.add(CartItem(image: widget.image,
                                        itemName: widget.dishName, 
                                        quantityBought: widget.quantity,
                                        total: widget.quantity * widget.pricePerUnit,
                                        itemId: widget.dishId)),
                              if(value == 0)
                              {setState(() {
                                this.showAddButton = true;
                                cartProvider.delete(CartItem(image: widget.image,
                                 quantityBought: widget.quantity,
                                total: widget.quantity * widget.pricePerUnit, 
                                itemName: widget.dishName,
                                itemId: widget.dishId));                                                                                               
                                }
                              )} 
                          },
                        )
                      ]),
        ),
    );
  }
}