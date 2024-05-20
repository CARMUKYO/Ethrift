import 'package:flutter/material.dart';
import 'HOMEPAGE.dart';

class Sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 250, //Tool bar height
              leading: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  padding: EdgeInsets.only(top: 100, left: 30),
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.white), // Set arrow color to white
                  onPressed: () {
                    Navigator.of(context).pop('/Sign_in');
                  },
                ),
              ),
              flexibleSpace: Container(
                //Tool Bar decoration
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff7FECC2),
                  Color(0xff268A63),
                  Color(0xff52A585),
                ], stops: [
                  0.0,
                  0.0,
                  0.2
                ])),
              ),
              title: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10.0), // Add padding to position the text
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Text(
                          'WELCOME BACK!',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 25),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Lets get you signed in!',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ), // Align content to bottom left
              ),
            ),
            body: Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(top: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 11),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 11),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text('Forgot Password?',
                              style: TextStyle(color: Color(0xffC65454))),
                        )),
                    SizedBox(height: 5.0),
                    SizedBox(
                      width: 320.0, // Button width
                      height: 51.0,
                      child: Container(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff000000)),
                              child: Text('Login',
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 20)))),
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Register');
                            },
                            child: Text(
                              'Don’t have any account? Sign Up.',
                              style: TextStyle(color: Color(0xff4364A4)),
                            )))
                  ],
                ),
              ),
            )));
  }
}
