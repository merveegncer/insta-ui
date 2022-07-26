
import 'package:flutter/material.dart';
import 'package:untitled2/util/bubble_stories.dart';
import 'package:untitled2/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'merveegncer' , 'umutgencer', 'badgalriri', 'mahmuttuncer', 'esraerol', 'binaliyildirirm',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text('Instagram' , style: TextStyle(color: Colors.black)
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 120,
            child: ListView.builder( scrollDirection: Axis.horizontal ,itemCount: people.length ,itemBuilder: (context, index){
              return BubbleStories(text: people[index]);
            })
          ),


          //posts
       UserPosts(name: 'badgalriri')
        ],
      ),
    );
  }
}