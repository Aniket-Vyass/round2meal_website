import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/review_card.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 900;

    return Container(
      color: const Color(0xff090909),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: isMobile ? 60 : 100,
      ),

      child: Column(
        children: [
          Text(
            "WHAT OUR GUESTS SAY",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: isMobile ? 32 : 55,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          Text(
            "4.8 Rating • 568 Google Reviews",
            style: GoogleFonts.poppins(
              color: Colors.white60,
              fontSize: isMobile ? 15 : 18,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: isMobile ? 40 : 70),

          if (isMobile)
            Column(
              children: const [
                ReviewCard(
                  name: "Rahul Sharma",
                  review:
                      "Beautiful ambience with lake view. Delicious food and excellent service.",
                ),
                SizedBox(height: 25),
                ReviewCard(
                  name: "Priya Mehta",
                  review:
                      "One of the best cafes near Gadisar Lake. Cozy atmosphere and reasonable prices.",
                ),
                SizedBox(height: 25),
                ReviewCard(
                  name: "Ankit Jain",
                  review:
                      "Amazing pizzas and authentic Rajasthani dishes. Staff was very polite.",
                ),
              ],
            )
          else
            Row(
              children: const [
                Expanded(
                  child: ReviewCard(
                    name: "Rahul Sharma",
                    review:
                        "Beautiful ambience with lake view. Delicious food and excellent service.",
                  ),
                ),

                SizedBox(width: 25),

                Expanded(
                  child: ReviewCard(
                    name: "Priya Mehta",
                    review:
                        "One of the best cafes near Gadisar Lake. Cozy atmosphere and reasonable prices.",
                  ),
                ),

                SizedBox(width: 25),

                Expanded(
                  child: ReviewCard(
                    name: "Ankit Jain",
                    review:
                        "Amazing pizzas and authentic Rajasthani dishes. Staff was very polite.",
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
