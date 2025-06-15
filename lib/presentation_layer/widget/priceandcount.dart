import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/constant/string.dart';
import 'package:flutter/material.dart';

class PriceAndCount extends StatelessWidget {
  const PriceAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
                padding: EdgeInsets.only(top: 3, left: 6, right: 6, bottom: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Text(
                    "${CharacterCubit.get(context).addlistProduct.length}",
                    style: TextStyle(fontSize: 11))),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, NavigatorRoute.checkbox);
              },
              color: Colors.white,
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(left: 5),
            child: Text("\$${CharacterCubit.get(context).price}",
                style: TextStyle(color: Colors.white))),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
