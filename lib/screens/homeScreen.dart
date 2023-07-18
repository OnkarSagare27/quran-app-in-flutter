import 'package:flutter/material.dart';
import 'package:alquran/widgets/continuereading.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:alquran/screens/menuScreen.dart';
import 'package:alquran/widgets/ayahoftheday.dart';
import 'package:alquran/widgets/bookmarks.dart';
import 'package:alquran/widgets/reciters.dart';
import 'package:alquran/widgets/surahs.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xFF175B32),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            activeColor: Color(0xFF175B32),
            color: Colors.white,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.all(10),
            gap: 20,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
                onPressed: () {
                  _pageController.jumpToPage(0);
                },
              ),
              GButton(
                icon: Icons.menu_book_rounded,
                text: "Surahs",
                onPressed: () {
                  _pageController.jumpToPage(1);
                },
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
                onPressed: () {
                  _pageController.jumpToPage(2);
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF175B32),
      appBar: AppBar(
        backgroundColor: const Color(0xFF175B32),
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Al Quran',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Days',
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.person_2_rounded),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => menuScreen()));
                print("Button presed");
              },
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: [
                    AyahOfTheDay(),
                    ContinueReading(),
                    bookmarks(),
                    Reciters()
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: ScrollableSurahList()),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'This application was developed by CRAFTOX solely for testing purposes. Any claims asserting illegal ownership of this application will be met with legal action against the individual or organization involved.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Days',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideTransitionRoute extends PageRouteBuilder {
  final Widget page;

  SlideTransitionRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );
}
