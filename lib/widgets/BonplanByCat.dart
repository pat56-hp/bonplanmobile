import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/bonPlan/BonPlan.dart';
import 'package:flutter/material.dart';

class BonplanByCat extends StatefulWidget {
  const BonplanByCat({super.key});

  @override
  State<BonplanByCat> createState() => _BonplanByCatState();
}

class _BonplanByCatState extends State<BonplanByCat> {
  int _selectedIndex = 0;

  //Liste de categories
  List<String> categories = [
    'Houses',
    'Apartments',
    'Offices',
    'Hospitals',
    'Commissions',
  ];

  //Liste d'element pour chaque categorie
  List<List<String>> items = [
    ['Item 1.1', 'Item 1.2', 'Item 1.3', 'Item 1.4', 'Item 1.5'],
    ['Item 2.1', 'Item 2.2', 'Item 2.3', 'Item 2.4', 'Item 2.5'],
    ['Item 3.1', 'Item 3.2', 'Item 3.3', 'Item 3.4', 'Item 3.5'],
    ['Item 4.1', 'Item 4.2', 'Item 4.3', 'Item 4.4', 'Item 4.5'],
    ['Item 5.1', 'Item 5.2', 'Item 5.3', 'Item 5.4', 'Item 5.5'],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40, // Hauteur des onglets
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? appBotomActiveColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(borderRadius),
                      border: Border.all(
                          color: _selectedIndex == index
                              ? appBotomActiveColor
                              : borderColor)),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Les plans de la semaine',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                    color: appBotomActiveColor,
                    borderRadius: BorderRadius.circular(borderRadius)),
                child: const Row(
                  children: [
                    Text('Voir plus', style: TextStyle(fontSize: 12)),
                    Icon(Icons.navigate_next, size: 14)
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: (MediaQuery.of(context).size.height / 3) + 140, // Hauteur du contenu
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: items[_selectedIndex].map((item) {
              return BonPlan(categoryLable: categories[_selectedIndex]);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
