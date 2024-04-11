import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class FeatureTopInfo extends StatelessWidget {
  const FeatureTopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    'assets/profil.jpg', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Patrick Kouassi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                    SizedBox(height: 3),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.place,
                        size: 12
                      ),
                      Text('Abidjan, Marcory', style: TextStyle(fontSize: 10))
                    ],
                  )
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: appBotomActiveColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(Icons.more_vert, size: 20,),
            ),
          ),
        ],
      ),
    );
  }
}