import 'package:flutter/material.dart';
import 'package:flutter_insta/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("img/insta.jpeg"),
              width: 200.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0,
                child: TextField(
                  style: TextStyle(fontSize: 12.0, height: 1.0),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
                      hintText: "Phone Nunber,username or email",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey[300])),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0,
                child: TextField(
                  style: TextStyle(fontSize: 12.0, height: 1.0),
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey[300])),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    "Forgot Password ?",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                    textColor: Colors.white,
                    child: Text("Login"),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
