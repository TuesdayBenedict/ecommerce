import 'package:e_commerce/pages/includes/categories_items.dart';
import 'package:e_commerce/pages/includes/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Check current Category
  int currentCategory = 0;

  // Change the current category
  void changeCategory(index) {
    setState(() {
      currentCategory = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // logo & avatar image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/app_icon.svg',
                          width: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'E-Comm',
                          style: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: defaults,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 29,
                ),

                // greeting
                Text(
                  'Hi, Andrea',
                  style: TextStyle(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                    fontSize: 16,
                    color: defaults,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'What are you looking for today?',
                  style: TextStyle(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: defaults,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // Search Box
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                        color: grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Search Product',
                          style: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                            fontSize: 14,
                            color: grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          // products display
          Container(
            decoration: const BoxDecoration(
              color: greyLight1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),

                // Product Categories
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: categoriesItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == categoriesItems.length - 1 ? 24 : 11,
                          left: index == 0 ? 24 : 0,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            changeCategory(index);

                            // change product display
                          },
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor: MaterialStatePropertyAll(
                              currentCategory == index
                                  ? primary
                                  : Colors.transparent,
                            ),
                          ),
                          child: Text(
                            categoriesItems[index],
                            style: TextStyle(
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              fontSize: 14,
                              color:
                                  currentCategory == index ? white : defaults,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                // products
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    // itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: 125,
                                  child: Image.asset(
                                    'assets/products/product1.png',
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: defaults,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      colorFilter: const ColorFilter.mode(
                                        white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
