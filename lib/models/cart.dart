import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    // Shoe(
    //     name: 'Zoom FREAK',
    //     price: '236',
    //     description: 'The forward-thinking of his latest signature shoe.',
    //     imagePath: 'lib/images/Zoomfreak.png'),
    // Shoe(
    //     name: 'Air Jordans',
    //     price: '220',
    //     description:
    //         'You\ve got the hops and the speed-lace',
    //     imagePath: 'lib/images/AirJordan.png'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive',
        imagePath: 'lib/images/KDTREY.png'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        description:
            'Bouncy cushioning is paired with soft yet supportive foam',
        imagePath: 'lib/images/Kyrie.png')
  ];

  // list of items in user cart
  List<Shoe> useCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return useCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    useCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    useCart.remove(shoe);
    notifyListeners();
  }
}
