import 'package:buildapp/home.dart';
import 'package:buildapp/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  // String email;
  // String password;
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 10,
              right: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "Assets/wel.PNG",
                    width: 250,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(60.0),
                  //   child: Text(
                  //     'Sign in',
                  //     style: TextStyle(fontSize: 30.0),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Email or Phone Number',
                        prefixIcon: Icon(Icons.email),
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     email = value;
                      //   });
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     password = value;
                      //   });
                      // },
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.blue,
                      child: Text(
                        'Forgot password !',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 300,
                      height: 40,
                      child: RaisedButton.icon(
                        icon: Icon(Icons.arrow_forward_rounded),
                        label: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onPressed: () {
                          Get.to(HomeScreen());
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: FlatButton(
                      onPressed: () {
                        Get.to(SignUp());
                      },
                      textColor: Colors.black,
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
