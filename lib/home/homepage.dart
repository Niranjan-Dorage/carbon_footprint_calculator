import 'dart:async';

import 'package:flutter/material.dart';

import '../footprints.dart/elecfootprints.dart';
import '../footprints.dart/vehicleform.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double infoheight = 0;
  double infowidth = 0;
  double infosize = 0;
  Color inforcolor = const Color.fromARGB(255, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      setState(() {
        infoheight = 50;
        infowidth = MediaQuery.of(context).size.width - 40;
        infosize = 16;
        inforcolor = const Color.fromARGB(129, 81, 80, 80);
      });
    });
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Carbon Footprint Calculator",
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 150,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 133, 255, 243),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ElecFootprintcalculator()));
                      // ignore: use_build_context_synchronously
                    },
                    child: const Text(
                      "Calculator for electricity",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    )),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 150,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 245, 255, 133),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Vehicleform()));
                      // ignore: use_build_context_synchronously
                    },
                    child: const Text(
                      "Calculator for vehicle",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ),
              const Center(
                child: Icon(Icons.arrow_upward_rounded,
                    color: Colors.white, size: 50),
              ),
              AnimatedContainer(
                width: MediaQuery.of(context).size.width,
                height: infoheight,
                decoration: BoxDecoration(
                    color: inforcolor, borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(left: 20, right: 20),
                duration: const Duration(seconds: 3),
                child: Center(
                  child: Text("click above to calculate your carbon footprint",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: infosize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ));
  }
}
