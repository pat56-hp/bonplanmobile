import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final bool isLoged;
  const Item({
    this.isLoged = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(bottom: 5, top: 5, left: 5, right: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Appartement meublé',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(37, 36, 36, 0.771),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        isLoged
                        ? Icons.favorite
                        : Icons.favorite_outline,
                        color: appTextActiveColor,
                        size: 18,
                      ),
                    )
                  ],
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
                IntrinsicWidth(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: appPrimaryColor),
                    child: const Row(
                      children: [
                        Icon(Icons.bookmark, size: 12),
                        Text(
                          'Restaurant',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commodite(Icons.bed, '2'),
                    commodite(Icons.bathtub, '2'),
                    commodite(Icons.smoke_free, 'Non'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Row commodite(IconData icon, String label) {
  return Row(children: [
    Icon(icon, size: 16),
    const SizedBox(width: 5),
    Text(label),
  ]);
}