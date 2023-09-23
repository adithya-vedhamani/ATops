import 'package:carousel_slider/carousel_slider.dart';
import 'package:atops/screens/widgets/banner.dart';
import 'package:atops/screens/widgets/category_item.dart';
import 'package:atops/screens/widgets/item.dart';
import 'package:atops/screens/widgets/item1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategory = 0;
  List<String> list = [
    'Farm Explorer',
    'Farm to Fork',
    'Green Thumb',
    'Family Getaway'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 310,
              width: size.width,
              decoration: const BoxDecoration(color: Color(0xff4CAF50)),
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 315,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.060,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.sora(
                                    color: const Color(0xffffffff),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "ISB, Gachibowli, Hyderabad",
                                      style: GoogleFonts.sora(
                                        color: const Color(0xffDDDDDD),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 44,
                              height: 44,
                              child: Image.asset(
                                "assets/images/avatar.png",
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.030,
                        ),
                        SizedBox(
                          height: 52,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff313131),
                              contentPadding: const EdgeInsets.only(
                                top: 23,
                                bottom: 2,
                                right: 5,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: "Search farm tour near you",
                              hintStyle: GoogleFonts.sora(
                                color: const Color(0xff989898),
                              ),
                              prefixIcon: const Icon(
                                Iconsax.search_normal,
                                color: Colors.white,
                                size: 20,
                              ),
                              suffixIcon: Container(
                                width: 44,
                                height: 44,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Iconsax.setting_4,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        SizedBox(
                          width: 315,
                          height: 140,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 1,
                              enlargeFactor: 0.3,
                              height: size.height * 0.22,
                              enlargeCenterPage: true,
                              autoPlay: true,
                            ),
                            items: List.generate(
                              5,
                              (index) => const BannerCard(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.030,
                        ),
                        SizedBox(
                          height: 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                list.length,
                                (index) => CategoryItem(
                                  index: index,
                                  title: list[index],
                                  selectedCategory: selectedCategory,
                                  onClick: () {
                                    setState(() => selectedCategory = index);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 280,
                  width: 320,
                  alignment: Alignment.center,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: size.width / 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 220,
                    ),
                    children: const [
                      Item(
                        image: "assets/images/1.jpg",
                      ),
                      Item1(
                        image: "assets/images/2.jpg",
                      ),
                      // Item(
                      //   image: "assets/images/3.png",
                      // ),
                      // Item(
                      //   image: "assets/images/4.png",
                      // ),
                    ],
                  ),
                ),
                // Information Box
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ATOps",
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        "ATOps  are guaranteed by CCTV surveillance, Eligibility Criterion Check, Police Identity Verification and Clearance, and associated FPO certification for the farmer you visit.",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF707070),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
