// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertInfo extends StatelessWidget {
  final image;
  final String info;
  const AlertInfo({
    super.key,
    required this.image,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.all(25),
        width: 400,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            image,
            SizedBox(
              width: 15,
            ),
            Expanded(
                child: Text(
              info,
              style: TextStyle(
                fontSize: 17,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
