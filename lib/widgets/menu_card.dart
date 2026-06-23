import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  const MenuCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => hovering = true);
      },

      onExit: (_) {
        setState(() => hovering = false);
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),

        transform: Matrix4.identity()..translate(0.0, hovering ? -15 : 0.0),

        decoration: BoxDecoration(
          color: const Color(0xff151515),

          borderRadius: BorderRadius.circular(30),

          border: Border.all(color: const Color(0xffD4AF37)),

          boxShadow: hovering
              ? const [BoxShadow(color: Color(0x55D4AF37), blurRadius: 40)]
              : [],
        ),

        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),

              child: AnimatedScale(
                scale: hovering ? 1.08 : 1,
                duration: const Duration(milliseconds: 350),

                child: Image.asset(
                  widget.image,
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),

              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    widget.price,
                    style: GoogleFonts.poppins(
                      color: const Color(0xffD4AF37),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),

                    decoration: BoxDecoration(
                      color: hovering
                          ? const Color(0xffD4AF37)
                          : Colors.transparent,

                      borderRadius: BorderRadius.circular(12),

                      border: Border.all(color: const Color(0xffD4AF37)),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(
                          "Explore Dish",
                          style: GoogleFonts.poppins(
                            color: hovering
                                ? Colors.black
                                : const Color(0xffD4AF37),

                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(width: 10),

                        Icon(
                          Icons.arrow_forward,
                          size: 18,

                          color: hovering
                              ? Colors.black
                              : const Color(0xffD4AF37),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
