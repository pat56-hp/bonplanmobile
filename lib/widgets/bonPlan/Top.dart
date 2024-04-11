import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        //padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height / 3) - 95,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius)),
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderRadius),
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
                            const SizedBox(height: 5,),
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
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
