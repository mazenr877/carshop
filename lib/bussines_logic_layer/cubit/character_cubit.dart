import 'package:carshop/data_layer/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
  static CharacterCubit get(context) => BlocProvider.of(context);
  List<Item> addlistProduct = [];
  String email = "";
  String name = "";

  int price = 0;
  addProducts(Item product, context, index) {
    addlistProduct.add(product);
    price += product.price;
    emit(CharacterLodded());
  }

// loggin with firebase
  login() {}
  removeProducts(Item product) {
    if (addlistProduct.isNotEmpty) {
      addlistProduct.remove(product);
      price -= product.price;
    } else {
      price = 0;
    }

    price -= product.price;
    emit(CharacterLodded());
  }

  List<Item> Car = [
    Item(image: "images/image1.jpg", price: 100),
    Item(image: "images/image2.jpg", price: 200),
    Item(image: "images/image3.jpg", price: 300),
    Item(image: "images/image4.jpg", price: 400),
    Item(image: "images/image5.jpg", price: 500),
    Item(image: "images/image6.webp", price: 600),
    Item(image: "images/image7.webp", price: 700),
    Item(image: "images/image8.webp", price: 800),
    Item(image: "images/image9.webp", price: 900),
    Item(image: "images/image10.webp", price: 1000),
    Item(image: "images/image11.webp", price: 3000),
    Item(image: "images/image12.webp", price: 4000),
  ];
  bool isshow = true;
  isshowmore() {
    isshow = !isshow;
    emit(CharacterLodded());
    print("${isshow}");
  }
}
