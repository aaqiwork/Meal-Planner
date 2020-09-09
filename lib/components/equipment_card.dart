import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/models/equipment_model.dart';



class EquipmentCard extends StatelessWidget {
  final Equipment equipment;

  const EquipmentCard({Key key, this.equipment});
  @override
  Widget build(BuildContext context) {
    print(equipment.image);
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.06,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://spoonacular.com/cdn/equipment_100x100/'+equipment.image,
                ),
              ),
            ),
          ),
          SizedBox(height: 10 / 5),
          Text(
            equipment.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          //SizedBox(height: 10 / 5),
        ],
      ),
    );
  }
}
