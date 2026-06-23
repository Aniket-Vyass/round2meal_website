import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(60),

      child: Column(
        children: [
          Text(
            "ROUND2MEAL",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Where Great Food Meets Beautiful Views",
            style: GoogleFonts.poppins(color: Colors.white54),
          ),

          const SizedBox(height: 40),

          const Divider(),

          const SizedBox(height: 30),

          Text(
            "© 2026 Round2Meal Café & Restaurant",
            style: GoogleFonts.poppins(color: Colors.white38),
          ),
        ],
      ),
    );
  }
}
