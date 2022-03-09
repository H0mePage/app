// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/homepage.dart';
import 'package:app/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/push.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              child: Text(
                "Smart Health",
                style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
              ),
              height: 20.0,
            ),
            Text(
              "Login Page....",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 100, 17, 255),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30.0,
              child: Text(
                "Welcome " + name,
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 100, 17, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: (Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "username", labelText: "Enter Username :"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "example@123", labelText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),

                  InkWell(
                    splashColor: Colors.red,
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));

                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 60 : 150,
                      height: 40.0,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 93, 0, 255),
                        shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius:
                        //  BorderRadius.circular(changeButton ? 20 : 10)
                      ),
                    ),
                  )
                  // SizedBox(
                  //     height: 40,
                  //     child: ,
                  // child: ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //         color: Color.fromARGB(255, 255, 255, 255)),
                  //   ),
                  // )
                  // ),
                ],
              )),
            ),
            // SizedBox(
            //   height:100,
            // ),
            // Image.asset(
            //   "assets/images/Smart-Health.png",
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
      ),
    );
  }
}
