import 'package:carbonfootprints/footprints.dart/calculate.dart';
import 'package:flutter/material.dart';

class Buildform extends StatefulWidget {
  const Buildform({super.key});

  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  double kwh = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 50,
          padding: const EdgeInsets.only(top: 2, left: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(94, 186, 185, 185),
            borderRadius: BorderRadius.circular(7),
          ),
          child: TextField(
            onChanged: (value) {
              if (value == "") {
                kwh = 0;
              } else {
                kwh = double.parse(value);
              }
            },
            cursorColor: const Color.fromARGB(55, 255, 255, 255),
            keyboardType: TextInputType.phone,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "roboto",
                fontSize: 16,
                color: Colors.white),
            decoration: const InputDecoration(
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'roboto',
              ),
              hintText: 'Eelectricity used in KWH per month',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          width: 160,
          height: 45,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 133, 255, 243),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
              ),
              onPressed: () async {
                FocusScope.of(context).unfocus();
                double carbonfootprint = eleccalculate(kwh).toDouble();
                showdialogue(context, carbonfootprint);
                // ignore: use_build_context_synchronously
              },
              child: const Text(
                "Calculate",
                style: TextStyle(fontSize: 17.5, color: Colors.black),
              )),
        ),
      ],
    ));
  }
}
