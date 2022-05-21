import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:stereo/Screens/Home.dart';
import 'package:stereo/Screens/sticky.dart';
import 'package:stereo/Screens/bottom.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginHome(title: 'Login',);
  }
}

class LoginHome extends StatefulWidget {
  LoginHome({ required this.title});

  final String title;

  @override
  _LoginState createState() => _LoginState();
}



class _LoginState extends State<LoginHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(widget.title,style: TextStyle(color: Color(0xff001035)),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () =>  Navigator.pop(context),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/logo.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          prefixIcon: Icon(
                              Icons.person
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: Icon(
                              Icons.lock_outline
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 60,
                        child: Container(
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> BottonScreen()));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            disabledTextColor: Colors.white,
                            disabledColor: Colors.blueAccent,
                            color: Colors.blueAccent,
                            child: new Text("Log In"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('OR'),
                    // SizedBox(height: 30,),
                    // Container(
                      // height: 60,
                      // child: ButtonTheme(
                      //   minWidth: 400.0,
                      //   height: 100,
                      //   child: SignInButton(
                      //     Buttons.Facebook,
                      //     shape: RoundedRectangleBorder(
                      //     ),
                      //     onPressed: () {},
                      //   ),
                      // ),
                    // ),
                    Container(
                      height: 90,
                      padding: EdgeInsets.only(top: 40),
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 100,
                        child: SignInButton(
                          Buttons.Google,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
