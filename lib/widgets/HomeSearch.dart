import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explorez les meilleurs endroits de divertissements sans vous déplacer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 10
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  cursorColor: const Color.fromARGB(31, 86, 86, 86),
                  style: TextStyle(color: inputTextColor),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(Icons.search, color: inputTextColor,),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintText: 'Rechercher',
                    hintStyle: TextStyle(
                      color: inputTextColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: borderColor
                      ),
                      borderRadius: BorderRadius.circular(borderRadius)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: borderColor
                      ),
                      borderRadius: BorderRadius.circular(borderRadius)
                    ),
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
                    border: Border.all(
                      color: borderColor
                    ),
                  ),
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.tune),
                    color: iconColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}