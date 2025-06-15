import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/presentation_layer/widget/priceandcount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                  title: Text(
                    "Checkbox",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  centerTitle: true,
                  actions: [PriceAndCount()],
                ),
                body: ListView.builder(
                    itemCount:
                        CharacterCubit.get(context).addlistProduct.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                                child: Image.asset(
                                    "${CharacterCubit.get(context).addlistProduct[index].image}")),
                            title: Text("car"),
                            subtitle: Text(
                                "\$${CharacterCubit.get(context).addlistProduct[index].price}"),
                            trailing: IconButton(
                                onPressed: () {
                                  CharacterCubit.get(context).removeProducts(
                                      CharacterCubit.get(context).Car[index]);
                                },
                                icon: Icon(Icons.remove)),
                          ),
                        ),
                      );
                    })));
      },
    );
  }
}
