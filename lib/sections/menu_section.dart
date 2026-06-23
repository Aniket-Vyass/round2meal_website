import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/menu_card.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 900;

    return Container(
      color: const Color(0xff090909),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: isMobile ? 60 : 100,
      ),

      child: Column(
        children: [
          Text(
            "POPULAR MENU",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: isMobile ? 36 : 55,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          Text(
            "Discover our most loved dishes",
            style: GoogleFonts.poppins(
              color: Colors.white60,
              fontSize: isMobile ? 15 : 18,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: isMobile ? 40 : 70),

          if (isMobile)
            Column(
              children: const [
                MenuCard(
                  image: "lib/assets/images/pizza.jpg",
                  title: "Margherita Pizza",
                  price: "₹249",
                ),
                SizedBox(height: 30),
                MenuCard(
                  image: "lib/assets/images/dalbaati.jpg",
                  title: "Dal Baati Churma",
                  price: "₹299",
                ),
                SizedBox(height: 30),
                MenuCard(
                  image: "lib/assets/images/coffee.webp",
                  title: "Cold Coffee",
                  price: "₹149",
                ),
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: const [
                Expanded(
                  child: MenuCard(
                    image: "lib/assets/images/pizza.jpg",
                    title: "Margherita Pizza",
                    price: "₹249",
                  ),
                ),

                SizedBox(width: 30),

                Expanded(
                  child: MenuCard(
                    image: "lib/assets/images/dalbaati.jpg",
                    title: "Dal Baati Churma",
                    price: "₹299",
                  ),
                ),

                SizedBox(width: 30),

                Expanded(
                  child: MenuCard(
                    image: "lib/assets/images/coffee.webp",
                    title: "Cold Coffee",
                    price: "₹149",
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
