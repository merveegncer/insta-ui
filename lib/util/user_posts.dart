import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
final String name;
UserPosts({required this.name});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold),),],
              ),
              Icon(Icons.menu),

            ],
          ),
        ),
  // post
        Container(
            height: 400,
            color: Colors.grey
        ),
        //buttons and comments
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],),

              Icon(Icons.bookmark)
            ],
          ),
        ),
        //LIKED BY..
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(' merveegncer' , style: TextStyle(fontWeight: FontWeight.bold),),
              Text(' and '),
              Text('others' , style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        //CAPTION
        Padding(
          padding: const EdgeInsets.only(left: 14.0 , top: 8.0),
          child: Row(
            children: [
              Text('merveegncer ' , style: TextStyle(fontWeight: FontWeight.bold),),
              Text('yolların ustasıyım bakışlarının hastasıyım;)'),
            ],
          ),
        ),

        //COMMENTS

      ],
    );
  }
}
