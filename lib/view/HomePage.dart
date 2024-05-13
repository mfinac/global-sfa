import 'package:flutter/material.dart';
import 'package:globalsfa/view/Dashboard.dart';
import 'package:globalsfa/view/FragmentTools.dart';
import 'package:globalsfa/view/Logout.dart';
import 'package:globalsfa/view/SalesManagement.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Index of the current page
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          DashboardPage(),
          SalesManagementPage(),
          FragmentToolsPage(),
          LogoutPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index); // Instantly switch to the selected page
          });
        },
        selectedItemColor: Colors.black, // Set color for selected item
        unselectedItemColor: Colors.black.withOpacity(0.5), // Set color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.point_of_sale_sharp),
            label: 'Sales Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
