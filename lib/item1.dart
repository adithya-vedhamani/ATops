import 'package:atops/common/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Item1 extends StatefulWidget {
  final String image;

  const Item1({
    super.key,
    required this.image,
  });

  @override
  State<Item1> createState() => _ItemState1();
}

class _ItemState1 extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 13,
          right: 13,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 142,
                  height: 132,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit:
                          BoxFit.cover, // Adjusted to cover the available space
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: -1,
                  child: Container(
                    width: 51,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Iconsax.star1,
                          color: Color(0xfffFBBE21),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "4.2",
                          style: GoogleFonts.sora(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                Routes.detail,
              ),
              child: Text(
                "Ambika",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2F2D2C),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Green Thumb',
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xff9B9B9B),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff2F4B4E),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.detail,
                  ),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xffC67C4E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
