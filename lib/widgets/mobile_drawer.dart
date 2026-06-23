import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff090909),
      child: SafeArea(
        child: Column(
          children: [
            // Drawer Header / Logo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Image.asset(
                "lib/assets/images/logo.png",
                height: 100,
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                    "ROUND2MEAL",
                    style: GoogleFonts.playfairDisplay(
                      color: const Color(0xffD4AF37),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            const Divider(color: Colors.white10, height: 1),
            const SizedBox(height: 20),

            // Navigation Links
            drawerNavItem(context, "HOME"),
            drawerNavItem(context, "ABOUT"),
            drawerNavItem(context, "MENU"),
            drawerNavItem(context, "GALLERY"),
            drawerNavItem(context, "REVIEWS"),

            const Spacer(),

            // Book a Table Button
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  // In future we can add scroll-to-reservation logic here
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffD4AF37), width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "BOOK A TABLE",
                      style: GoogleFonts.poppins(
                        color: const Color(0xffD4AF37),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerNavItem(BuildContext context, String text) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.1,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Color(0xffD4AF37),
        size: 14,
      ),
      onTap: () {
        Navigator.of(context).pop();
        // In future we can add scrolling navigation here
      },
    );
  }
}
