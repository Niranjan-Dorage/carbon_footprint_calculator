import 'package:flutter/material.dart';

double eleccalculate(double kwh) {
  double carbonfootprint = kwh * 0.93;
  return carbonfootprint.toDouble();
}

double vehiclecalculate(double fuelinkg) {
  double carbonfootprint = fuelinkg * 0.63;
  return carbonfootprint.toDouble();
}

void showdialogue(BuildContext context, double carbonfootprint) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 45, 45, 45),
          title: const Text(
            "Carbon Footprint Score : ",
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            carbonfootprint.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Close",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ))
          ],
        );
      });
}
