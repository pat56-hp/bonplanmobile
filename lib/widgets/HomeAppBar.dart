import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      color: Colors.white,
      //height: 200,
      child: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: appPrimaryColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Même rayon que la carte
                child: Image.asset(
                  'assets/profil.jpg', 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Bonjour, Patrick', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: appTextActiveColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text('Côte d\'ivoire', style: TextStyle(fontSize: 12)),
                ),
              ],
            )
          ],
        ),
        actions: [
          iconButton(const Icon(Icons.notifications_none), 'notification', context),
          iconButton(const Icon(Icons.segment_rounded), 'drower', context),
        ],
      ),
    );
  }

  Padding iconButton(Icon icon, String data, context){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: appPrimaryColor,
          border: Border.all(
            color: borderColor
          ),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: IconButton(
          icon: icon, 
          onPressed: () {
            if (data == 'drower') {
              print(context);
              Scaffold.of(context).openEndDrawer();
            }
          },
          color: iconColor, 
          iconSize: 25.0, // Taille de l'icône
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}