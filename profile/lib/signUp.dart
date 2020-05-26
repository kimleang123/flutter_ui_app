import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: 414.0,
        decoration: BoxDecoration(
          //make a gradient color background
          gradient: LinearGradient(
            colors: <Color>[
              Colors.orange,
              Colors.orangeAccent[100],
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 150.0,
              ),
              // Icon(
              //   Icons.spa,
              //   color: Colors.yellow[300],
              //   size: 70.0,
              // ),
              Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'BalooTamma',
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              textFormfiled('Email', 'example@gmail.com', Icons.mail),
              SizedBox(
                height: 20.0,
              ),
              textFormfiled1('Password', '* * * * * * * *', Icon(Icons.remove_red_eye),),
              SizedBox(
                height: 20.0,
              ),
              textFormfiled1(
                  'Comfirm password', '* * * * * * * *', Icon(Icons.remove_red_eye),),
              SizedBox(
                height: 20.0,
              ),
              flatButton1(Colors.white, 'sign up', Colors.orange),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'OR sign up with',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'BalooTamma',
                  fontSize: 15.0,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  flatButton1(Colors.blueAccent, 'Facebook', Colors.white),
                  SizedBox(
                    width: 40.0,
                  ),
                  flatButton1(Colors.red, 'Google', Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
// for email
  Widget textFormfiled(String t, String h, IconData c) {
    //textformfield is a widget that make a form and we also use TextField widget too
    return TextFormField(
      cursorColor: Colors.orangeAccent,
      decoration: InputDecoration(
        // filled and fillColor is func that make textformfield have background color
        filled: true,
        fillColor: Colors.white,
        //make a icon as leading of the textformfield
        prefixIcon: Icon(
          c,
          color: Colors.grey,
        ),

        labelText: t,
        labelStyle: TextStyle(color: Colors.orange),
        hintText: h,
      ),
    );
  }

// for password
  Widget textFormfiled1(String t, String h, Icon c) {
    //textformfield is a widget that make a form and we also use TextField widget too
    return TextFormField(
      obscureText: true,
      cursorColor: Colors.orangeAccent,
      decoration: InputDecoration(
        // filled and fillColor is func that make textformfield have background color
        filled: true,
        fillColor: Colors.white,
        //make a icon as leading of the textformfield
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Colors.grey,
        ),
        //make a icon as trailing of the textformfield
        suffixIcon: IconButton(
          color: Colors.grey,
          icon: c,
          onPressed: () {},
        ),
        labelText: t,
        labelStyle: TextStyle(color: Colors.orange),
        hintText: h,
      ),
    );
  }
// for sigu up, facebook and google button
  Widget flatButton1(Color disc, String s, Color tc) {
    return FlatButton(
      disabledColor: disc,
      onPressed: null,
      child: Text(
        s,
        style: TextStyle(
          color: tc,
          fontFamily: 'BalooTamma',
          fontSize: 20.0,
        ),
      ),
    );
  }
}
