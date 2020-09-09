import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/equipment_card.dart';

import 'package:flutter_recipe_app/models/equipment_model.dart';




class Equipments extends StatelessWidget {
  final List<Equipment> equipments;

  const Equipments({Key key, this.equipments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  print(ingredient[1].orginalName);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Equipments",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: equipments.length,
              itemBuilder: (context, index) => EquipmentCard(equipment: equipments[index]),
            ),
          )
        ],
      ),
    );
  }
}
