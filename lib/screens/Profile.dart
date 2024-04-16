import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/profil/AdessUpdate.dart';
import 'package:bonplan/widgets/profil/EmailUpdate.dart';
import 'package:bonplan/widgets/profil/LastNameUpdate.dart';
import 'package:bonplan/widgets/profil/NameUpdate.dart';
import 'package:bonplan/widgets/profil/PhoneUpdate.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Profile extends StatelessWidget {
  final PersistentTabController controller;
  const Profile({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController(text: 'Kouassi');
    TextEditingController lastname = TextEditingController(text: 'Aimé');
    TextEditingController email =
        TextEditingController(text: 'pataime56@gmail.com');
    TextEditingController adress =
        TextEditingController(text: 'Abidjan, Abobo');
    TextEditingController phone = TextEditingController(text: '+2250708377751');

    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(top: appBartMarginTop),
          child: IconButton(
              onPressed: () {controller.index = 0;},
              icon: const Icon(
                Icons.chevron_left,
                size: appBarIconSize,
              )),
        ),
        toolbarHeight: appBarHeight,
        title: Container(
          margin: const EdgeInsets.only(top: appBartMarginTop),
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
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return NameUpdate(name: name);
                        });
                  },
                  child: item('Nom', name.text),
                ),
                separator(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return LastNameUpdate(lastname: lastname);
                        });
                  },
                  child: item('Prénom(s)', lastname.text),
                ),
                separator(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return EmailUpdate(email: email);
                        });
                  },
                  child: item('Email', email.text),
                ),
                separator(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return PhoneUpdate(phone: phone);
                        });
                  },
                  child: item('Contact', phone.text),
                ),
                separator(),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return AdressUpdate(adress: adress);
                        });
                  },
                  child: item('Adresse', adress.text),
                )
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
  return Row(
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
