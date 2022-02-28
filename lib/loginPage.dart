// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Image.asset(
            "assets/images/push.png",
            fit: BoxFit.cover,
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
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: (Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hoverColor: Colors.amberAccent,
                      hintText: "username",
                      labelText: "Enter Username :"),
                ),
                TextField(
                  decoration: InputDecoration(
                      hoverColor: Colors.amberAccent,
                      hintText: "example@123",
                      labelText: "Enter Password"),
                ),
                SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                    height: 35.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: ),
                    )),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
