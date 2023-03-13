import 'package:electronic_store/Screens/AboutPart.dart';
import 'package:electronic_store/Screens/allPhonesPart.dart';
import 'package:electronic_store/Screens/bestPhonesPart.dart';
import 'package:flutter/material.dart';
// Styles
import 'package:electronic_store/Styles/Colors.dart';

import '../Styles/TextStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPage = 0;
  List<String> pageTitles = ['Store', 'Bests', 'About'];
  String _pageTitle = 'Store';

  final PageController _pageController = PageController();
  bool absorb = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            _pageTitle,
            style: appBarTitleTextStyle,
          ),
        ),
        backgroundColor: themeColor,
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) => _selectedPage = value,
            children: const [AllPhones(), BestPhones(), AboutPart()],
          ),
        ],
      ),
      bottomNavigationBar: AbsorbPointer(
        absorbing: absorb,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor,
          unselectedItemColor: unselectedItemColor,
          selectedItemColor: seconColor,
          onTap: (value) {
            _pageTitle = pageTitles[value];
            _selectedPage = value;
            setState(() {});
            _pageController.animateToPage(
              _selectedPage,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          currentIndex: _selectedPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Store'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_line_chart), label: 'Bests'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), label: 'About'),
          ],
        ),
      ),
    );
  }
}
