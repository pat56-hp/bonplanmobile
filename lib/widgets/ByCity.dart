import 'package:bonplan/constant.dart';
import 'package:bonplan/screens/ListPage.dart';
import 'package:flutter/material.dart';

class ByCity extends StatelessWidget {
  const ByCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Prêts de chez vous',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => const ListPage(title: 'Prêts de chez vous',),
                ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2.0),
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
            item(),
            item(),
            item(),
          ],
        ),
      ),
    );
  }
}

Column item() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image.asset(
                    'assets/bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Appartement meublé sisi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.place, size: 12),
                      Text(
                        'Abidjan, cocody angré',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: appPrimaryColor),
                    child: const Row(
                      children: [
                        Icon(Icons.bookmark, size: 12),
                        Text(
                          'Category',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
          ],
        ),
      )
    ],
  );
}
