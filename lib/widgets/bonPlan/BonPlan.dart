import 'package:bonplan/constant.dart';
import 'package:bonplan/widgets/bonPlan/BonPlanTopInfo.dart';
import 'package:flutter/material.dart';

class BonPlan extends StatefulWidget {
  final String categoryLable;
  const BonPlan({required this.categoryLable, super.key});

  @override
  State<BonPlan> createState() => _BonPlanState();
}

class _BonPlanState extends State<BonPlan> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        //padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width * 0.82,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            //Top info du card
            const FeatureTopInfo(),
            Stack(children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height / 3) - 70,
                child: ClipRect(
                  child: AspectRatio(
                    aspectRatio: 16 / 6,
                    child: Image.asset(
                      'assets/bg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 5,
                  left: 10,
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(37, 36, 36, 0.771),
                          borderRadius: BorderRadius.circular(borderRadius)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.schedule,
                            color: appTextActiveColor,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Ouvert',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ))),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(37, 36, 36, 0.771),
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.favorite_border,
                      color: appTextActiveColor,
                      size: 18,
                    ),
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                color: appPrimaryColor),
                            child: Row(
                              children: [
                                const Icon(Icons.bookmark, size: 12),
                                Text(
                                  widget.categoryLable,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                color: appBotomActiveColor),
                            child: const Row(
                              children: [
                                Icon(Icons.place, size: 12),
                                Text(
                                  'Voir map',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Appartement meublé sisi',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.place, size: 12),
                          Text(
                            'Abidjan, cocody angré',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12.0),
                    color: borderColor,
                    height: 0.75,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
