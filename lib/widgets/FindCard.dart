import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class FindCard extends StatelessWidget {
  final PersistentTabController controller;
  const FindCard({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 23, 28, 16),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Center(
        child: Column(children: [
          const Text(
            'Trouver les meilleurs plans de divertissement',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: (){
                controller.index = 1;
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius))),
                  backgroundColor: MaterialStatePropertyAll(appTextActiveColor),
                  textStyle: const MaterialStatePropertyAll(
                      TextStyle(fontWeight: FontWeight.bold))),
              child: const Text(
                'Explorer',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
