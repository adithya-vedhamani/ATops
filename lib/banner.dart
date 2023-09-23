import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 120, // Adjusted height to reduce size
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/banner.png"),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(25), // Reduced border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Adjusted padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center, // Centered content vertically
          children: [
            Container(
              width: 70, // Adjusted width
              height: 20, // Adjusted height
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffED5151),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Promo",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 12, // Adjusted font size
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 6), // Adjusted spacing
            Text(
              "Take a Selfie with a farmer\n Get 30% off on next tour",
              style: GoogleFonts.sora(
                fontSize: 18, // Adjusted font size
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              "a selfie with a farmer",
              style: GoogleFonts.sora(
                fontSize: 18, // Adjusted font size
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
