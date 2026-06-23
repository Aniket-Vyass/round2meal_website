import 'dart:ui';
import 'package:flutter/material.dart';

class GlassNavbar extends StatelessWidget {
  const GlassNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 50,

      child: ClipRRect(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("lib/assets/images/logo.png", height: 140),

            const Spacer(),

            navItem("HOME"),
            navItem("ABOUT"),
            navItem("MENU"),
            navItem("GALLERY"),
            navItem("REVIEWS"),

            const SizedBox(width: 30),

            Container(
              padding: const EdgeInsets.only(
                left: 22,
                right: 10,
                top: 10,
                bottom: 10,
              ),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xffD4AF37)),
              ),

              child: const Text(
                "BOOK A TABLE",
                style: TextStyle(color: Color(0xffD4AF37)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
