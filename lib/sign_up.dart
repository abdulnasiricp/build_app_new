import 'package:buildapp/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class SignUp extends StatefulWidget {
  // SignUp({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  @override
  bool _isHidden = true;
  // final _auth = FirebaseAuth.instance;
  // String cust_name;
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
                color: Colors.yellowAccent[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Full Name',
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                      ),
                      // onChanged: (val)async {
                      //   // setState(() {
                      //   //   cust_name = val;
                      //   // });
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
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      // onChanged: (val) async{
                      //   // setState(() {
                      //   //   email = value;
                      //   // });
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
                      obscureText: _isHidden,
                      // onChanged: (val) {
                      //   // setState(() {
                      //   //   password = val;
                      //   // });
                      // },
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
                          'Create Account',
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
                          Get.to('HomeScreen()');
                          // FirebaseAuth.instance.createUserWithEmailAndPassword(
                          //   email: email, password: password)
                          //   .then(signedInUser){
                          //     _firbbase.collection('users')
                          //     .add({'email': email, 'pass' : password})
                          //     .then(value){
                          //       if(signedInUser != null){
                          //         Navigator.pushNamed(context, 'Home');
                          //       }
                          //     })
                          //   .catchError((e){
                          //     print(e);
                          //   });
                          // })
                          // .catchError((e){
                          //     print(e);
                          //   });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Already have an Account '),
                        ),
                        FlatButton(
                          onPressed: () {
                            Get.to(SignIn());
                          },
                          textColor: Colors.black,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.yellow,
                        ),
                      ],
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
