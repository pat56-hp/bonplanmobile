import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/BonplanByCat.dart';
import 'package:bonplan/widgets/ByCity.dart';
import 'package:bonplan/widgets/FindCard.dart';
import 'package:bonplan/widgets/HomeAppBar.dart';
import 'package:bonplan/widgets/HomeSearch.dart';
import 'package:bonplan/widgets/TopPlan.dart';
import 'package:bonplan/widgets/popular.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: const HomeAppBar(),
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        width: MediaQuery.of(context).size.width,
        backgroundColor: drowerBg,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      padding: const EdgeInsets.all(5.0),
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(37, 36, 36, 0.771),
                      )),
                      icon: Icon(
                        Icons.cancel,
                        color: appTextActiveColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                  color: drowerItemBgColor,
                  borderRadius: BorderRadius.circular(borderRadius)),
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.login,
                        size: 28,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Connexion',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.person_add_alt,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Inscription',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                  color: drowerItemBgColor,
                  borderRadius: BorderRadius.circular(borderRadius)),
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        size: 28,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'FAQ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.gpp_maybe_outlined,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'Politiques de confidentialité',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.share_outlined,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'Partager à un ami',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.phone_in_talk_outlined,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'Nous contacter',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star_outline,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'Noter l\'application',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 1,
                    decoration: BoxDecoration(
                      color: drowerBorderSpacing,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.manage_accounts_outlined,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'A propos de nous',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                  color: drowerItemBgColor,
                  borderRadius: BorderRadius.circular(borderRadius)),
                  child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 28,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Déconnexion',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Les Bons Plans', style: TextStyle(color: Colors.white, fontSize: 16),),
                const Text('Version 1.0.0', style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              //Search in home page
              HomeSearch(),
              //Plan by category
              BonplanByCat(),
              //Recent plan
              TopPlan(),
              //Popular plan
              Popular(),
              //By city
              ByCity(),
              //Find card
              FindCard(),
            ],
          ),
        ),
      ),
    );
  }
}
