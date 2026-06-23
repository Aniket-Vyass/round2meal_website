import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReservationSection extends StatelessWidget {
  const ReservationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/rooftop.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Container(
        color: Colors.black.withOpacity(.8),

        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),

            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),

              child: Container(
                width: 700,
                padding: const EdgeInsets.all(50),

                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.3),

                  borderRadius: BorderRadius.circular(35),

                  border: Border.all(color: const Color(0xffD4AF37)),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text(
                      "RESERVE YOUR TABLE",
                      style: GoogleFonts.playfairDisplay(
                        color: const Color(0xffD4AF37),
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Book your perfect dining experience",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 50),

                    textField("Name"),

                    const SizedBox(height: 20),

                    textField("Phone Number"),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(child: textField("Date")),

                        const SizedBox(width: 20),

                        Expanded(child: textField("Time")),
                      ],
                    ),

                    const SizedBox(height: 20),

                    textField("Guests"),

                    const SizedBox(height: 40),

                    Container(
                      width: double.infinity,
                      height: 65,

                      decoration: BoxDecoration(
                        color: const Color(0xffD4AF37),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Center(
                        child: Text(
                          "BOOK TABLE",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget textField(String hint) {
    return TextField(
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(color: Colors.white54),

        filled: true,

        fillColor: Colors.white.withOpacity(.08),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
