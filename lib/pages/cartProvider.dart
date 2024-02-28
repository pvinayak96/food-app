import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartItem.dart';
import 'package:collection/collection.dart';


class CartProvider extends ChangeNotifier{

  List<CartItem> dishesInCart = [];

  void add(CartItem dish){
    
    CartItem? itemPresent = dishesInCart.firstWhereOrNull((dishInCart) =>  dishInCart.itemName == dish.itemName );

    if(itemPresent?.itemName != null){
      dishesInCart[dishesInCart.indexWhere((dishInCart) =>  dishInCart.itemName == dish.itemName)] = dish;
    }
    else{
      dishesInCart.add(dish);
    }
    notifyListeners();
  }


  void delete(CartItem dish){
    dishesInCart.remove(dishesInCart.firstWhereOrNull((dishInCart) =>  dishInCart.itemName == dish.itemName ));
    notifyListeners();
  }

//Not fully implemented
  void removeAll(){
    dishesInCart.clear();
    notifyListeners();
  }

  int totalCartValue(){
    return dishesInCart.fold(0, (previousValue, element) => previousValue += element.total);
  }


}