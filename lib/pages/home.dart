import 'package:flutter/material.dart';
import 'package:instagram_clone1/util/bubble_stories.dart';
import 'package:instagram_clone1/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['Aditya', 'LK', 'Harshith', 'Suraj', 'Aneesh'];
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
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          // posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
