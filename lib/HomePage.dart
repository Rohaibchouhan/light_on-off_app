// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isON = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 180, 36, 25),
          elevation: 0.0,
          title: const Text("FlashLight App"),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("1.jpg"), fit: BoxFit.cover)),
          child: Center(
              child: Transform.rotate(
            angle: -32 / 20,
            child: Transform.scale(
              scale: 5.8,
              child: Switch(
                  activeColor: const Color.fromARGB(255, 151, 38, 30),
                  inactiveThumbColor: const Color.fromARGB(255, 202, 37, 25),
                  value: isON,
                  // ignore: non_constant_identifier_names
                  onChanged: (Value) {
                    setState(() {
                      isON = !isON;
                      isON
                          ? TorchLight.enableTorch()
                          : TorchLight.disableTorch();
                    });
                  }),
            ),
          )),
        ));
  }
}
