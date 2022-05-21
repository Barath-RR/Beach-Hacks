import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stts;

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert!!Someone is Calling you up!'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _speechToText = stts.SpeechToText();
  bool islistening = false;
  String text = "Press the mic to start session !!";

  get okButton => null;

  bool isAlert(String S) {
    var arr = ['help', 'emergency', 'hello'];
    bool containsD = false;
    arr.forEach((e) {
      containsD = S.contains(e);
    });
    return containsD;
  }

  void alerter(String str) {
    if (isAlert(str)) {
      showAlertDialog(context);
    }
  }

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('Alert'),
      content: Text("Look around !"),
      actions: [
        okButton,
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void listen() async {
    if (!islistening) {
      bool available = await _speechToText.initialize(
        onStatus: (status) => print("$status"),
        onError: (errorNotification) => print("$errorNotification"),
      );
      if (available) {
        setState(() {
          islistening = true;
        });
        _speechToText.listen(
          onResult: (result) => setState(() {
            text = result.recognizedWords;
          }),
        );
      }
    } else {
      setState(() {
        islistening = false;
      });
      _speechToText.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    _speechToText = stts.SpeechToText();
  }

  @override
  Widget build(BuildContext contetx) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton.icon(
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AboutWidget();
                }),
            icon: Icon(Icons.notifications),
            label: Text(''),
          )
        ],
        toolbarHeight: 65,
        elevation: 15,
        title: Text(
          'Voice Recognition',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: islistening,
        repeat: true,
        endRadius: 80,
        glowColor: Colors.orangeAccent,
        duration: Duration(milliseconds: 1000),
        child: FloatingActionButton(
          onPressed: () {
            listen();
          },
          child: Icon(islistening ? Icons.mic : Icons.mic_none),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_rounded),
            label: 'Profile',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
