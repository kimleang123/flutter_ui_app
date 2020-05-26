import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
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
                'Login',
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
              textFormfiled1('Password', '* * * * * * * *', Icon(Icons.remove_red_eye)),
              SizedBox(
                height: 10.0,
              ),
              //porpose for this is make a text as a link
              // inkWell class response for touch
              InkWell(
                child: Text(
                  'Forgetten Password ?',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                //when tap it will link to google website
                onTap: () => launch('https://google.com'),
              ),
              SizedBox(
                height: 20.0,
              ),
              flatButton1(Colors.white, 'login', Colors.orange),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'OR login with',
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
                  SizedBox(width: 40.0,),
                  flatButton1(Colors.red, 'Google', Colors.white),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(children: <Widget>[
                Text('Dont have account ?'),
                SizedBox(width: 10.0,),
                InkWell(
                child: Text(
                  'Sign Up here',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.lightBlue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                //when tap it will link to youtube website
                onTap: () => launch('https://youtube.com'),
              ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
//for email
  Widget textFormfiled(String t, String h, IconData c) {
    //textformfield is a widget that make a form that we can validate the input and 
    //we also use TextField widget too but it cann't validate
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
//for password
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
