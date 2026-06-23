import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:round2meal_website/widgets/gallery_image.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      "lib/assets/images/hero.png",
      "lib/assets/images/indoor.png",
      "lib/assets/images/lake_view.png",
      "lib/assets/images/rooftop.png",
    ];

    return Container(
      color: const Color(0xff0d0d0d),
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Text(
            "GALLERY",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Experience the beauty of Round2Meal",
            style: GoogleFonts.poppins(color: Colors.white60, fontSize: 18),
          ),

          const SizedBox(height: 60),

          SizedBox(
            height: 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              itemCount: images.length,
              separatorBuilder: (_, __) => const SizedBox(width: 25),

              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,

                      builder: (_) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: const EdgeInsets.all(40),

                        child: Hero(
                          tag: images[index],

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),

                            child: InteractiveViewer(
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },

                  child: Hero(
                    tag: images[index],
                    child: SizedBox(
                      width: 550,
                      child: GalleryImage(image: images[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
