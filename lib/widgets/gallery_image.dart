import 'package:flutter/material.dart';

class GalleryImage extends StatefulWidget {
  final String image;

  const GalleryImage({super.key, required this.image});

  @override
  State<GalleryImage> createState() => _GalleryImageState();
}

class _GalleryImageState extends State<GalleryImage> {
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
        duration: const Duration(milliseconds: 300),

        transform: Matrix4.identity()..translate(0.0, hovering ? -10 : 0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),

          boxShadow: hovering
              ? [
                  BoxShadow(
                    color: const Color(0xffD4AF37).withOpacity(.25),
                    blurRadius: 40,
                  ),
                ]
              : [],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),

          child: AnimatedScale(
            scale: hovering ? 1.05 : 1,
            duration: const Duration(milliseconds: 300),

            child: Image.asset(widget.image, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
