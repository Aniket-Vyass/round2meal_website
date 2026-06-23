import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 900;

    return Positioned(
      left: isMobile ? 20 : 30,
      top: isMobile ? 100 : 150,
      right: isMobile ? 20 : null,
      bottom: isMobile ? null : 0,
      child: SizedBox(
        width: isMobile ? screenWidth - 40 : 700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WHERE GREAT FOOD",
              style: GoogleFonts.playfairDisplay(
                fontSize: isMobile ? 26 : 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(duration: 800.ms).slideX(begin: -.2),

            RichText(
              text: TextSpan(
                style: GoogleFonts.playfairDisplay(
                  fontSize: isMobile ? 26 : 40,
                  fontWeight: FontWeight.bold,
                ),
                children: const [
                  TextSpan(
                    text: "MEETS ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: "BEAUTIFUL VIEWS",
                    style: TextStyle(color: Color(0xffC9A532)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: isMobile ? double.infinity : 550,
              child: Text(
                "Experience fine dining beside the serene Gadisar Lake. Delicious food, warm ambience & unforgettable moments.",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: isMobile ? 14 : 17,
                  height: 1.5,
                ),
              ),
            ).animate().fadeIn(delay: 600.ms).slideX(begin: -.2),

            const SizedBox(height: 15),
            Row(
              children: [
                const Icon(Icons.star, color: Color(0xffD4AF37), size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "4.8 (568 Reviews)  •  ₹200-₹400  •  Cafe",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: isMobile ? 13 : 16,
                    ),
                  ),
                ),
              ],
            ).animate().fadeIn(delay: 1200.ms).slideY(begin: .2),

            const SizedBox(height: 20),

            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 16 : 30,
                      vertical: isMobile ? 12 : 18,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffD4AF37),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_today, color: Colors.white, size: 16),
                        const SizedBox(width: 8),
                        Text(
                          "RESERVE TABLE",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: isMobile ? 11 : 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: isMobile ? 10 : 20),

                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 16 : 30,
                      vertical: isMobile ? 12 : 18,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffD4AF37)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.restaurant, color: Colors.white, size: 16),
                        const SizedBox(width: 8),
                        Text(
                          "EXPLORE MENU",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: isMobile ? 11 : 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).animate().fadeIn(delay: 900.ms).slideY(begin: .2),
          ],
        ),
      ),
    );
  }
}
