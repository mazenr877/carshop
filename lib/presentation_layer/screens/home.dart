import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/presentation_layer/screens/checkbox.dart';
import 'package:carshop/presentation_layer/screens/details.dart';
import 'package:carshop/presentation_layer/screens/signupscreen.dart';

import 'package:carshop/presentation_layer/widget/priceandcount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  centerTitle: true,
                  actions: [PriceAndCount()],
                ),
                drawer: Drawer(
                  backgroundColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        UserAccountsDrawerHeader(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/image7.webp",
                                  ),
                                  fit: BoxFit.cover)),
                          accountName: Text(
                              "${CharacterCubit.get(context).name}",
                              style: TextStyle(color: Colors.white)),
                          accountEmail: Text(
                              "${CharacterCubit.get(context).email}",
                              style: TextStyle(color: Colors.white)),
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: AssetImage("images/mazen.jpg"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text("Home"),
                          leading: Icon(Icons.home),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                          },
                        ),
                        ListTile(
                          title: Text("My Product"),
                          leading: Icon(Icons.add_shopping_cart),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => (CheckBox())));
                          },
                        ),
                        ListTile(
                          title: Text("About"),
                          leading: Icon(Icons.help_center),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Logout"),
                          leading: Icon(Icons.exit_to_app),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                          },
                        ),
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Text("Developed by mazen reda @ 2024 "))
                      ])
                    ],
                  ),
                ),
                body: BlocBuilder<CharacterCubit, CharacterState>(
                    builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(30),
                    child: GridView.builder(
                        itemCount: CharacterCubit.get(context).Car.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Stack(children: [
                            Positioned(
                              child: GridTile(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.pushNamed(
                                      //     context, NavigatorRoute.details);

                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Details(
                                                    product: CharacterCubit.get(
                                                            context)
                                                        .Car[index],
                                                  )));
                                    },
                                    child: Image.asset(
                                      "${CharacterCubit.get(context).Car[index].image}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                footer: GridTileBar(
                                  leading: Text(
                                    "\$${CharacterCubit.get(context).Car[index].price}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  title: Text("    "),
                                  trailing: IconButton(
                                      onPressed: () {
                                        CharacterCubit.get(context).addProducts(
                                            CharacterCubit.get(context)
                                                .Car[index],
                                            context,
                                            index);
                                        print(
                                            "${CharacterCubit.get(context).addlistProduct.length}");
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        size: 22,
                                      )),
                                ),
                              ),
                            ),
                          ]);
                        }),
                  );
                })));
      },
    );
  }
}
