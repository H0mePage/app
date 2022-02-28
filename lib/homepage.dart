import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int Data = 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IKGDA Chat",
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("$Data ....Hola....Welcome...Welcome...!How Are You...!"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
