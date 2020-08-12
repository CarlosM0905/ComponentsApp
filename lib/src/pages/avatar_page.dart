import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
              radius: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/load.gif'),
            image: NetworkImage(
                'https://cdnb.artstation.com/p/assets/images/images/014/639/307/large/luciano-berutti-comp-stanlee.jpg?1544795305')),
      ),
    );
  }
}
