import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureStrip extends StatelessWidget {
  const FeatureStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0d0d0d),
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          FeatureTile(icon: Icons.map_outlined, title: "Lake View"),
          FeatureTile(icon: Icons.local_pizza_rounded, title: "Delicious Food"),
          FeatureTile(icon: Icons.coffee_rounded, title: "Cozy Ambience"),
          FeatureTile(
            icon: Icons.sentiment_satisfied_alt_rounded,
            title: "Great Service",
          ),
          FeatureTile(
            icon: Icons.family_restroom_rounded,
            title: "Family Friendly",
          ),
        ],
      ),
    );
  }
}

class FeatureTile extends StatefulWidget {
  final IconData icon;
  final String title;

  const FeatureTile({super.key, required this.icon, required this.title});

  @override
  State<FeatureTile> createState() => _FeatureTileState();
}

class _FeatureTileState extends State<FeatureTile> {
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
        transform: Matrix4.identity()..translate(0.0, hovering ? -8 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: hovering
              ? [
                  BoxShadow(
                    color: const Color(0xffD4AF37).withOpacity(.3),
                    blurRadius: 40,
                  ),
                ]
              : [],
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: const Color(0xffD4AF37).withOpacity(.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                widget.icon,
                color: const Color(0xffD4AF37),
                size: 36,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
