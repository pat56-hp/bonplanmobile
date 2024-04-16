import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/bonPlan/Item.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Favoris extends StatelessWidget {
  final PersistentTabController controller;
  const Favoris({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(top: appBartMarginTop),
          child: IconButton(
              onPressed: () {
                controller.index = 0;
              },
              icon: const Icon(
                Icons.chevron_left,
                size: appBarIconSize,
              )),
        ),
        toolbarHeight: appBarHeight,
        title: Container(
          margin: const EdgeInsets.only(top: appBartMarginTop),
          child: const Text(
            "Favoris",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: appBarTitleSize),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              cursorColor: const Color.fromARGB(31, 86, 86, 86),
              style: TextStyle(color: inputTextColor),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.search,
                    color: inputTextColor,
                  ),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Rechercher',
                hintStyle: TextStyle(
                  color: inputTextColor,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor),
                    borderRadius: BorderRadius.circular(borderRadius)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor),
                    borderRadius: BorderRadius.circular(borderRadius)),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(7, (index) {
                    return const Item(isLoged: true);
                  })
              ),
            )
          ],
        ),
      ),
    );
  }
}


