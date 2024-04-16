import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/bonPlan/Item.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String title;
  const ListPage({required this.title, super.key});

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
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: appBarIconSize,
              )),
        ),
        toolbarHeight: appBarHeight,
        title: Container(
          margin: const EdgeInsets.only(top: appBartMarginTop),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: appBarTitleSize),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(borderRadius),
                      border: Border.all(color: borderColor),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune),
                      color: iconColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: List.generate(7, (index) {
                    return const Item();
                  })),
            )
          ],
        ),
      ),
    );
  }
}
