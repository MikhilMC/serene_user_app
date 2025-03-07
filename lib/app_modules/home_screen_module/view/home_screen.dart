import 'package:flutter/material.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/home_screen_module/utils/random_generator.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/explore_widget.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/home_widget.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/my_bookings_widget.dart';
import 'package:serene_user_app/app_modules/home_screen_module/widget/profile_widget.dart';
import 'package:serene_user_app/app_modules/login_module/view/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();
  late List<Widget> _appBodies;

  @override
  void initState() {
    _appBodies = [
      HomeWidget(
        onCityTap: (String placeName) {
          setState(() {
            _currentPageIndex = 1; // Switch to Explore tab
            _appBodies[1] =
                ExploreWidget(initialPlace: placeName); // Update ExploreWidget
          });
          _pageController.jumpToPage(1); // Navigate to Explore tab
        },
      ),
      const ExploreWidget(),
      MyBookingsWidget(
        bookings:
            generateRandomBookingHistory(10), // Generate 10 random bookings
      ),
      const ProfileWidget(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_dark.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Hello, John",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.firstColor,
          backgroundColor: AppColors.secondColor,
          unselectedItemColor: AppColors.secondColor,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          elevation: 2,
        ),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          currentIndex: _currentPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: AppColors.fourthColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
              backgroundColor: AppColors.fourthColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hotel),
              label: "My Bookings",
              backgroundColor: AppColors.fourthColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: AppColors.fourthColor,
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: _appBodies,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.fourthColor,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.firstColor,
              ),
              child: Text(
                'Serene',
                style: TextStyle(
                  color: AppColors.fourthColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColors.firstColor,
              ),
              title: const Text(
                'Log out',
                style: TextStyle(
                  color: AppColors.firstColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
                (Route<dynamic> route) => false, // Remove all previous routes
              ),
            ),
          ],
        ),
      ),
    );
  }
}
