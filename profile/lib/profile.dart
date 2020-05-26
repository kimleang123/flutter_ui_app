import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: null),
        title: Text(
          'View Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            //design container
            decoration: BoxDecoration(
              //make a gradient background color
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.orangeAccent[200],
                  Colors.orangeAccent[100],
                ],
                //make a begin color align to ....(can be center, bottom,...)
                // also can use FractionalOffset.(bottomRight,center...) too
                begin: Alignment.bottomLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // make a button shape circle
                  circleButton(
                    Colors.orangeAccent[100],
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  //equal to widget circleButton
                  // CircleAvatar(
                  //   radius: 30.0,
                  //   backgroundColor: Colors.orangeAccent[100],
                  //   child: IconButton(
                  //       icon: Icon(
                  //         Icons.phone,
                  //         color: Colors.white,
                  //         size: 30.0,
                  //       ),
                  //       onPressed: null),
                  // ),
                  Column(
                    
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/leang.jpg'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Kimleang Ly',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lobster',
                            letterSpacing: 5.0,
                            fontSize: 20.0),
                      ),
                      Text(
                        'Flutter Leaner',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'BalooTamma',
                            letterSpacing: 3.0,
                            fontSize: 12.0),
                      ),
                    ],
                  ),
                  circleButton(
                    Colors.orangeAccent[200],
                    Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              containFollow(Colors.orangeAccent[100], '291199', 'FOLLOWERS'),
              containFollow(Colors.orangeAccent[200], '991129', 'FOLLOWING'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              listInfo('Email', 'lykimleang456@gmail.com'),
              lineDivider(),
              listInfo('Phone', '+(855)98830773'),
              lineDivider(),
              listInfo('Instargram', 'lykimleang456'),
              lineDivider(),
              listInfo('Facebook', 'Ly kimleang'),
              lineDivider(),
              listInfo('Favorite quote', '...Stand tall for a life time...'),
              lineDivider(),
            ],
          ),
        ],
      ),
    );
  }

  // create a new widget name circleButton
  Widget circleButton(Color c, Icon d) {
    return CircleAvatar(
      radius: 30.0,
      backgroundColor: c,
      child: IconButton(icon: d, onPressed: null),
    );
  }
  //create a new widget called containFollow instead of using widget container 2 time
  Widget containFollow(Color c1, String s1, String s2) {
    return Container(
      color: c1,
      width: 207.0, //haft of width
      height: 80.0,
      child: Column(
        children: <Widget>[
          Text(
            s1,
            style: TextStyle(
              fontFamily: 'BalooTamma',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            s2,
            style: TextStyle(
              fontFamily: 'BalooTamma',
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  //create widget for listInfo
  Widget listInfo(String s3, String s4) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            s3,
            style: TextStyle(
              color: Colors.orangeAccent[200],
              fontSize: 10.0,
            ),
          ),
          Text(
            s4,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
              fontFamily: 'BalooTamma',
            ),
          ),
        ],
      ),
    );
  }

  //create widget for divide line
  Widget lineDivider() {
    return SizedBox(
      height: 10.0,
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}
