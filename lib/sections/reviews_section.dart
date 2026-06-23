import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/review_card.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff090909),

      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),

      child: Column(
        children: [
          Text(
            "WHAT OUR GUESTS SAY",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "4.8 Rating • 568 Google Reviews",
            style: GoogleFonts.poppins(color: Colors.white60, fontSize: 18),
          ),

          const SizedBox(height: 70),

          const Row(
            children: [
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
