import 'package:carbonfootprints/footprints.dart/buildform.dart';
import 'package:flutter/material.dart';

class ElecFootprintcalculator extends StatefulWidget {
  const ElecFootprintcalculator({super.key});

  @override
  State<ElecFootprintcalculator> createState() =>
      _ElecFootprintcalculatorState();
}

class _ElecFootprintcalculatorState extends State<ElecFootprintcalculator> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        // FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const Text("Carbon Footprints calculator"),
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Buildform(),
             
            ],
          )),
    );
  }
}
