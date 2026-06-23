import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCard extends StatefulWidget {
  final String name;
  final String review;

  const ReviewCard({super.key, required this.name, required this.review});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovering = true),
      onExit: (_) => setState(() => hovering = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),

        transform: Matrix4.identity()..translate(0.0, hovering ? -10 : 0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),

          boxShadow: hovering
              ? [
                  BoxShadow(
                    color: const Color(0xffD4AF37).withOpacity(.3),
                    blurRadius: 40,
                  ),
                ]
              : [],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),

          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),

            child: Container(
              padding: const EdgeInsets.all(30),

              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.35),

                borderRadius: BorderRadius.circular(25),

                border: Border.all(color: const Color(0xffD4AF37)),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,

                        decoration: BoxDecoration(
                          color: const Color(0xffD4AF37).withOpacity(.12),
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.star,
                          color: Color(0xffD4AF37),
                          size: 30,
                        ),
                      ),

                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            widget.name,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Row(
                            children: List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                size: 18,
                                color: Color(0xffD4AF37),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Container(height: 1, color: Colors.white10),

                  const SizedBox(height: 25),

                  Text(
                    widget.review,
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
