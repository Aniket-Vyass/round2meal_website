import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassNavbar extends StatelessWidget {
  const GlassNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 850;

    return Positioned(
      top: 0,
      left: isMobile ? 15 : 30,
      right: isMobile ? 15 : 50,

      child: ClipRRect(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "lib/assets/images/logo.png",
              height: isMobile ? 90 : 140,
              cacheHeight: isMobile ? 180 : 280,
              errorBuilder: (context, error, stackTrace) {
                debugPrint("Navbar logo load error: $error");
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "ROUND2MEAL",
                    style: GoogleFonts.playfairDisplay(
                      color: const Color(0xffD4AF37),
                      fontSize: isMobile ? 20 : 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),

            const Spacer(),

            if (!isMobile) ...[
              navItem("HOME"),
              navItem("ABOUT"),
              navItem("MENU"),
              navItem("GALLERY"),
              navItem("REVIEWS"),

              const SizedBox(width: 30),

              Container(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xffD4AF37)),
                ),

                child: const Text(
                  "BOOK A TABLE",
                  style: TextStyle(color: Color(0xffD4AF37)),
                ),
              ),
            ] else
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xffD4AF37),
                  size: 32,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget navItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
