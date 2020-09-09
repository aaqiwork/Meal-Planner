import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  final int servings;
  final int minutes;

  TimeCard(this.servings, this.minutes);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Card(
                  child: Container(
            width: 140,
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Preparation Time',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      minutes.toString() + ' min',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
            ),
          ),
        ),
        Card(
                  child: Container(
            //decoration: ,
              width: 140,
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Served For',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      servings == 1? servings.toString() +' person': servings.toString()+' people',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
