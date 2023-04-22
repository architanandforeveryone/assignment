import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  String text;
  String Url;
   Game({Key? key,
     required this.text,
     required this.Url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24)),
        width: 180,
        height: 300,
        child: Column(
          children: [
            Image.network(
                Url),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
