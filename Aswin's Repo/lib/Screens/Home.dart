import 'package:flutter/material.dart';
import 'package:stereo/Screens/LoginScreen.dart';
import 'package:stereo/Screens/RegisterScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Account',
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      home: AccountHome(title: 'Rental'),
      theme: new ThemeData(

        pageTransitionsTheme: PageTransitionsTheme(builders: {TargetPlatform.android: ZoomPageTransitionsBuilder(),}),
      ),
    );
  }
}

class AccountHome extends StatefulWidget {
  AccountHome({required this.title});

  final String title;

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: FractionalOffset.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6 ),
                        child: Column(
                          children: [
                            ShaderMask(
                              shaderCallback: (rect) {
                                return LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.black, Colors.blueAccent],
                                ).createShader(Rect.fromLTRB(0, 0, 900, 900));
                              },
                              blendMode: BlendMode.dstIn,
                              child: Container(
                                height: 200 ,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:AssetImage('assets/logo.png'),
                                    // image: NetworkImage('https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png'),
                                    fit: BoxFit.cover,
                                  ), //DecorationImage
                                ), //BoxDecoration
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Text("Welcome to Stereo", style: TextStyle(color: Color(0xff161830), fontWeight: FontWeight.w500, fontSize: 25),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: ButtonTheme(
                          minWidth: 400.0,
                          height: 60,
                          child: Container(
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
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
                        ), //Your widget here,
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 80.0),
                        child: ButtonTheme(
                          minWidth: 400.0,
                          height: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: Color(0xff789ff5))
                              ),
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.blueAccent,
                              disabledColor: Colors.white,
                              disabledTextColor: Color(0xff161830),
                              color: Colors.white,
                              child: new Text("SignUp"),
                            ),
                          ),
                        ), //Your widget here,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
