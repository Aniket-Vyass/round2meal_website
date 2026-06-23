import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 320,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.75),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffD4AF37), width: 1),
      ),

      child: Column(
        children: [
          infoTile(
            Icons.location_on_outlined,
            "Right side of Boating\nTicket Counter,\nGadisar Lake, Jaisalmer",
            "",
          ),

          divider(),

          infoTile(
            Icons.access_time_outlined,
            "Closed",
            "Popular times: 5pm – 10pm",
            titleColor: Colors.red,
          ),

          divider(),

          infoTile(
            Icons.currency_rupee_outlined,
            "₹200 – ₹400 per person",
            "(approx.)",
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 1,
      color: Colors.white10,
    );
  }

  Widget infoTile(
    IconData icon,
    String title,
    String subtitle, {
    Color titleColor = Colors.white,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xffD4AF37), size: 28),

        const SizedBox(width: 22),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: titleColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),

              if (subtitle.isNotEmpty) ...[
                const SizedBox(height: 8),

                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
