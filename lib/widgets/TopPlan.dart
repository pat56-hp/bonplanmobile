import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/bonPlan/Top.dart';
import 'package:flutter/material.dart';

class TopPlan extends StatelessWidget {
  const TopPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Récemment ajoutés',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {},
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
          SizedBox(
            height: (MediaQuery.of(context).size.height / 3) + 20, // Hauteur du contenu
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return const Top();
              }),
            ),
          ),
        ],
      ),
    );
  }
}