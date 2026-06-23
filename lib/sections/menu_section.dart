import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/menu_card.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff090909),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),

      child: Column(
        children: [
          Text(
            "POPULAR MENU",
            style: GoogleFonts.playfairDisplay(
              color: const Color(0xffD4AF37),
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Discover our most loved dishes",
            style: GoogleFonts.poppins(color: Colors.white60, fontSize: 18),
          ),

          const SizedBox(height: 70),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: const [
              Expanded(
                child: MenuCard(
                  image: "lib/assets/images/pizza.png",
                  title: "Margherita Pizza",
                  price: "₹249",
                ),
              ),

              SizedBox(width: 30),

              Expanded(
                child: MenuCard(
                  image: "lib/assets/images/dalbaati.png",
                  title: "Dal Baati Churma",
                  price: "₹299",
                ),
              ),

              SizedBox(width: 30),

              Expanded(
                child: MenuCard(
                  image: "lib/assets/images/coffee.png",
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
