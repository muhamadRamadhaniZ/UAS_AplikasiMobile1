import 'package:flutter/material.dart';
import 'package:ui_uas/screen/loginscreen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple[500], Colors.purple[900]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          child: Center(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 250.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Excited?!',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'QuicksandB',
                          fontSize: 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 315.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'You should be!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'QuicksandM',
                          fontSize: 45),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 400.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign In if you alredy have an account with us',
                      style: TextStyle(
                          color: Colors.white30,
                          fontFamily: 'QuicksandB',
                          fontSize: 18),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 120.0,
                      right: 15.0,
                    ),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 22,
                              fontFamily: 'QuicksandB'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 530.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Or Sign Up if you are new!',
                      style: TextStyle(
                          color: Colors.white30,
                          fontFamily: 'QuicksandB',
                          fontSize: 18),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 390.0,
                      right: 15.0,
                    ),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 22,
                              fontFamily: 'QuicksandB'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
