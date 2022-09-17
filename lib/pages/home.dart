import 'package:flutter/material.dart';
import 'package:instagram_clone1/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = []
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          )),
      body: Column(
        children: [
          // stories
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BubbleStories(
                  text: 'Aditya',
                ),
                BubbleStories(
                  text: 'LK',
                ),
                BubbleStories(
                  text: 'Harshith',
                ),
                BubbleStories(
                  text: 'Suraj',
                ),
                BubbleStories(
                  text: 'Kaushal',
                ),
              ],
            ),
          )
          // posts
        ],
      ),
    );
  }
}
