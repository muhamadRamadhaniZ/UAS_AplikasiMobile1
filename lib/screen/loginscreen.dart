import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  bool secured;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey[900], Colors.indigo[500]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),  
              Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: ClipOval(
                        
                        
                        child: Image(
                        width: 150,
                        height: 150,
                          image: AssetImage('img/pp.jpg'),
                          fit: BoxFit.cover
                          ),
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 140,right: 10),
                child: Row(
                 
                  children: [
                
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'QuicksandB',
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    SizedBox(height: 65),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'please input your Emai Address';
                            }
                            return null;
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Email Addres',
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1.5,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700),
                              filled: true,
                              fillColor: Colors.white,
                              focusColor: Colors.transparent),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'please input your password';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1.5,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700),
                              filled: true,
                              fillColor: Colors.white,
                              focusColor: Colors.transparent),
                        ),SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: ButtonTheme(
                  
                  minWidth: MediaQuery.of(context).size.width,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      if(_formKey.currentState.validate()){

                      }
                    },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              )
                      ],
                    )),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              color: Colors.white30, fontFamily: 'QuicksandB',fontSize: 18),
                        ),
                      ))
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'QuicksandM',fontSize: 30),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
