import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 900;

    final contentWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "CONTACT US",
          style: GoogleFonts.playfairDisplay(
            color: const Color(0xffD4AF37),
            fontSize: isMobile ? 32 : 50,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: isMobile ? 30 : 40),

        info(
          Icons.location_on,
          "Right Side of Boating Ticket Counter,\nGadisar Lake, Jaisalmer",
        ),

        info(Icons.star, "4.8 Rating • 568 Reviews"),

        info(Icons.currency_rupee, "₹200 - ₹400"),

        info(Icons.access_time, "Popular Time : 5 PM - 10 PM"),
      ],
    );

    final imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(30),

      child: Image.asset(
        "lib/assets/images/lake_view.png",
        height: isMobile ? 250 : 350,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );

    return Container(
      color: const Color(0xff0d0d0d),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: isMobile ? 60 : 100,
      ),

      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                contentWidget,
                const SizedBox(height: 40),
                imageWidget,
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(child: contentWidget),
                const SizedBox(width: 40),
                Expanded(child: imageWidget),
              ],
            ),
    );
  }

  Widget info(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xffD4AF37)),

          const SizedBox(width: 20),

          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(color: Colors.white70, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
