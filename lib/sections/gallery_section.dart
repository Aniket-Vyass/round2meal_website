import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:round2meal_website/widgets/gallery_image.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 900;

    final images = [
      "lib/assets/images/hero.png",
      "lib/assets/images/indoor.png",
      "lib/assets/images/lake_view.png",
      "lib/assets/images/rooftop.png",
    ];

    return Container(
      color: const Color(0xff0d0d0d),
      padding: EdgeInsets.symmetric(vertical: isMobile ? 60 : 100),
      child: Column(
        children: [
          Text(
            "GALLERY",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: isMobile ? 36 : 55,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          Text(
            "Experience the beauty of Round2Meal",
            style: GoogleFonts.poppins(
              color: Colors.white60,
              fontSize: isMobile ? 15 : 18,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: isMobile ? 40 : 60),

          SizedBox(
            height: isMobile ? 250 : 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 100),
              itemCount: images.length,
              separatorBuilder: (_, __) => SizedBox(width: isMobile ? 15 : 25),

              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,

                      builder: (_) => Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: const EdgeInsets.all(20),

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
                      width: isMobile ? 320 : 550,
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
