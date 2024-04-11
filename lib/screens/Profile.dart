import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_left,
                size: appBarIconSize,
              )),
        ),
        toolbarHeight: appBarHeight,
        title: Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: const Text(
            "Profil",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: appBarTitleSize),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Stack(children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: borderColor)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/profil.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(37, 36, 36, 0.771),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.camera_alt,
                    color: appTextActiveColor,
                    size: 22,
                  ),
                ))
          ]),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                item('Nom', 'Kouassi'),
                separator(),
                item('Prénom(s)', 'Patrick Aimé'),
                separator(),
                item('Email', 'pataime56@gmail.com'),
                separator(),
                item('Contact', '+225********51'),
                separator(),
                item('Adresse', 'Abidjan, Abobo'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

Container separator() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    height: 0.3,
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 135, 135, 135),
    ),
  );
}

Row item(String title, String data) {
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Text(
            data,
            style: const TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
          ),
          const Icon(
            Icons.chevron_right,
            color: Color.fromARGB(255, 86, 86, 86),
          )
        ],
      )
    ],
  );
}
