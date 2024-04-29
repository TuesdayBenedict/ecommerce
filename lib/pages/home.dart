import 'package:e_commerce/pages/includes/colours.dart';
import 'package:e_commerce/pages/includes/navigation_bar_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // current items index
  int currentIndex = 0;

  // Change the value of the current Navigation index
  void _onTapItem(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: navPages[currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BottomAppBar(
            elevation: 0,
            color: defaults,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _onTapItem(0);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    colorFilter: ColorFilter.mode(
                      currentIndex == 0 ? primary : white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    _onTapItem(1);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/shopping-cart.svg',
                    colorFilter: ColorFilter.mode(
                      currentIndex == 1 ? primary : white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    _onTapItem(2);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/heart.svg',
                    colorFilter: ColorFilter.mode(
                      currentIndex == 2 ? primary : white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    _onTapItem(3);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/user.svg',
                    colorFilter: ColorFilter.mode(
                      currentIndex == 3 ? primary : white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
