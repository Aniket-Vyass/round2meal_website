import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:round2meal_website/sections/hero_content.dart';
import 'package:round2meal_website/widgets/glass_navbar.dart';
import 'package:round2meal_website/widgets/info_card.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,

      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: CarouselSlider(
              items: [
                Image.asset(
                  "lib/assets/images/lake_view.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image.asset(
                  "lib/assets/images/indoor.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image.asset(
                  "lib/assets/images/image.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
                Image.asset(
                  "lib/assets/images/rooftop.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ],

              options: CarouselOptions(
                viewportFraction: 1,
                height: double.infinity,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: false,
              ),
            ),
          ),

          // Dark overlay
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(.5)),
          ),

          // Navbar
          const GlassNavbar(),

          // Hero Content
          const HeroContent(),

          // Floating Card
          Positioned(
            right: MediaQuery.of(context).size.width * .08,
            top: MediaQuery.of(context).size.height * .25,
            child: const InfoCard(),
          ),
        ],
      ),
    );
  }
}
