import 'package:flutter/material.dart';
import 'package:round2meal_website/sections/contact_section.dart';
import 'package:round2meal_website/sections/footer_section.dart';
import 'package:round2meal_website/sections/gallery_section.dart';
import 'package:round2meal_website/sections/hero_section.dart';
import 'package:round2meal_website/sections/menu_section.dart';
import 'package:round2meal_website/sections/reservation_section.dart';
import 'package:round2meal_website/sections/reviews_section.dart';
import 'package:round2meal_website/widgets/feature_strip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090909),

      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            FeatureStrip(),
            MenuSection(),
            GallerySection(),
            ReservationSection(),
            ReviewSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
