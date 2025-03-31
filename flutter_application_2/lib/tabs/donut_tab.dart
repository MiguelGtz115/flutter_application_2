import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
//list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Donkyn Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Tizimin Donuts",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    [
      "Choco",
      "Juanito Donuts",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //prepa1
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //Número de clumnas
            crossAxisCount: 2,
            //Proporcion entre ancho y alto
            childAspectRatio: 1 / 1.5),
        //cuantos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //que elementos contruira
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
