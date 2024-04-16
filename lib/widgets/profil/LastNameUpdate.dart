import 'package:bonplan/constant.dart';
import 'package:flutter/material.dart';

class LastNameUpdate extends StatelessWidget {
  final TextEditingController lastname;
  const LastNameUpdate({required this.lastname, super.key});

  @override
  Widget build(BuildContext context) {
    double paddingBottomContext = MediaQuery.of(context).viewInsets.bottom > 0
        ? MediaQuery.of(context).viewInsets.bottom
        : 30;

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: 20, right: 20, left: 20, bottom: paddingBottomContext),
        decoration: BoxDecoration(
            color: appPrimaryColor,
            borderRadius: BorderRadius.circular(borderRadiusModalBottomSheet)),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(borderRadiusModalBottomSheet)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Modifier le prénom',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: lastname,
              keyboardType: TextInputType.text,
              cursorColor: const Color.fromARGB(31, 86, 86, 86),
              style: TextStyle(color: inputTextColor),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.person_2_outlined,
                    color: inputTextColor,
                    size: 20,
                  ),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Prénom(s)',
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
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(appBotomActiveColor),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadius)))),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.save_alt_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Enregistrer',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
