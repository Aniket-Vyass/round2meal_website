import 'package:flutter/material.dart';

class FloatingWhatsapp extends StatelessWidget {
  const FloatingWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 40,
      bottom: 40,

      child: Container(
        height: 70,
        width: 70,

        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,

          boxShadow: [
            BoxShadow(color: Colors.green.withOpacity(.5), blurRadius: 30),
          ],
        ),

        child: const Icon(Icons.message, color: Colors.white, size: 35),
      ),
    );
  }
}
