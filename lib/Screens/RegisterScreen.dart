import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterHome(title: 'Register',);
  }
}

class RegisterHome extends StatefulWidget {
  RegisterHome({required this.title});

  final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState  extends State<RegisterHome> {

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
                      child: Image.network('https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png'),
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
                          hintText: 'Name',
                          labelText: 'Name',
                          prefixIcon: Icon(
                              Icons.account_circle
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
                              Icons.lock
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          prefixIcon: Icon(
                              Icons.lock
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

                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),

                            ),
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            disabledTextColor: Colors.white,
                            disabledColor: Colors.blueAccent,
                            color: Colors.blueAccent,
                            child: new Text("Sign Up"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('OR'),
                    SizedBox(height: 30,),
                    Container(
                      height: 60,
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 100,
                        child: SignInButton(
                          Buttons.Facebook,
                          text: 'Sign Up with Facebook',
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(top: 40),
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 100,
                        child: SignInButton(
                          Buttons.Google,
                          text: 'Sign Up with Google',
                          shape: RoundedRectangleBorder(
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
