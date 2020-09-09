import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  final int hours;
  final int minutes;

  TimeCard(this.hours, this.minutes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Card(
        color: Colors.blueGrey,
        child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Time Taken',style: TextStyle(color: Colors.white),),
          Text('01:20 hours',style: TextStyle(color: Colors.white),),
        ]),
            ),
      ),
    );
  }
}
