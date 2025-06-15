import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/data_layer/model.dart';
import 'package:carshop/presentation_layer/widget/priceandcount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Details extends StatelessWidget {
  const Details({super.key, this.product});
  final Item? product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: Text(
                  "Details",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                centerTitle: true,
                actions: [PriceAndCount()],
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "${product?.image}",
                        fit: BoxFit.cover,
                        height: 380,
                        width: 420,
                      ),
                      Container(
                        child: Text("\$ ${product?.price}"),
                        margin: EdgeInsets.only(top: 20, bottom: 30),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(4),
                                      child: Text("New",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      decoration:
                                          BoxDecoration(color: Colors.red)),
                                  SizedBox(width: 10),
                                  Wrap(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_city_sharp),
                                SizedBox(width: 10),
                                Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text("location")),
                              ],
                            ),
                          ]),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                          width: 385,
                          child: Text("Details:",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 14, right: 15),
                        child: Text(
                          "lfgdhdfhdfd gegbfbgf mazen reda mohamed fatma reda elnady almany gefdgdf gdhyjjt hgfbg hjhjn fgnhjghnv hmhj,hn gbfhjj ikiluikj dfdbfgf fdvfwvf gbgrbgfv fevght efrt vbhhf fdfdddc gyhyh hyjuju olp;pp loiokjj gffdddr hmk k,llk,kk bvcd fgdggf ddfrgggf ggthnyhg hnbgv eedcfvf umnesrt bgwag fvfvnn v cvcc njymymyj poiuy xcvbn rtyyu tyuuuy rcdes jjjhgg vdfvbgb bgbgbg dbgfhf gfnfgnfb gnfhnfhnfg gnfgnfg gngngfbgnfn gngfn",
                          maxLines:
                              CharacterCubit.get(context).isshow ? 3 : null,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            CharacterCubit.get(context).isshowmore();
                          },
                          child: CharacterCubit.get(context).isshow
                              ? Text("Show More")
                              : Text("Show Less"))
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
