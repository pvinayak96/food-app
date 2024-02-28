import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cartItem.dart';
import 'package:collection/collection.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> dishesInCart = [];

  void add(CartItem dish) {
    CartItem? itemPresent = dishesInCart
        .firstWhereOrNull((dishInCart) => dishInCart.itemId == dish.itemId);

    if (itemPresent?.itemId != null) {
      dishesInCart[dishesInCart.indexWhere(
          (dishInCart) => dishInCart.itemId == dish.itemId)] = dish;
    } else {
      dishesInCart.add(dish);
    }
    notifyListeners();
  }

  void delete(CartItem dish) {
    dishesInCart.remove(dishesInCart.firstWhereOrNull(
        (dishInCart) => dishInCart.itemId == dish.itemId));
    notifyListeners();
  }

//Not fully implemented
  void removeAll() {
    dishesInCart.clear();
    notifyListeners();
  }

  int totalCartValue() {
    return dishesInCart.fold(
        0, (previousValue, element) => previousValue += element.total);
  }

  bool isItemPresent(String id) {
    CartItem? itemPresent = dishesInCart
        .firstWhereOrNull((dishInCart) => dishInCart.itemId == id);

    if (itemPresent?.itemId != null) {
      return true;
    } else {
      return false;
    }
  }

  int quantityBoughtForItem(String id){

    return dishesInCart[dishesInCart.indexWhere(
          (dishInCart) => dishInCart.itemId == id)].quantityBought;

  }
}
