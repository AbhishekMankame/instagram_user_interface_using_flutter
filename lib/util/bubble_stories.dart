//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:material_color_utilities/';
import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;

  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                //color: Colors.grey[200],
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                )),
            SizedBox(
              height: 10,
            ),
            Text(text)
          ],
        ));
  }
}
