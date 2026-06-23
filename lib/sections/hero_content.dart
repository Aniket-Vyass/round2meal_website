import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 150,
      bottom: 0,
      child: SizedBox(
        width: 700,

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "WHERE GREAT FOOD",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fadeIn(duration: 800.ms).slideX(begin: -.2),

              RichText(
                text: TextSpan(
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 40,
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
                width: 550,
                child: Text(
                  "Experience fine dining beside the serene Gadisar Lake. Delicious food, warm ambience & unforgettable moments.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 17,
                    height: 1.5,
                  ),
                ),
              ).animate().fadeIn(delay: 600.ms).slideX(begin: -.2),

              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xffD4AF37)),

                  const SizedBox(width: 10),

                  Text(
                    "4.8 (568 Reviews)  •  ₹200-₹400  •  Cafe",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ).animate().fadeIn(delay: 1200.ms).slideY(begin: .2),

              SizedBox(height: 10),

              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xffD4AF37),
                        borderRadius: BorderRadius.circular(6),
                      ),

                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "RESERVE TABLE",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),

                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffD4AF37)),
                        borderRadius: BorderRadius.circular(6),
                      ),

                      child: Row(
                        children: [
                          Icon(Icons.restaurant, color: Colors.white),
                          SizedBox(width: 15),
                          Text(
                            "EXPLORE MENU",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ).animate().fadeIn(delay: 900.ms).slideY(begin: .2),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
