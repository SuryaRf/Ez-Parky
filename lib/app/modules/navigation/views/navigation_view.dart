import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/modules/history/views/history_view.dart';
import 'package:ez_parky/app/modules/home/views/home_view.dart';
import 'package:ez_parky/app/modules/profile/views/profile_view.dart';
import 'package:ez_parky/app/modules/scan_page/views/scan_page_view.dart';
import 'package:ez_parky/app/modules/setting/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends StatefulWidget {
  final int initialPageIndex;

  const NavigationView({super.key, this.initialPageIndex = 0});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> _children = [
    const HomeView(),
    const HistoryView(),
    const SettingView(),
    const ProfileView(),
  ];
  
  late int currentPageIndex;

  @override
  void initState() {
    super.initState();
    currentPageIndex = widget.initialPageIndex;
  }

  void onTabTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(45.0)),
        ),
        backgroundColor: blueElement,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ScanPageView()));
        },
        child: const Icon(
          Icons.keyboard_command_key_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageStorage(
        bucket: bucket,
        child: _children[currentPageIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        color: blueElement.withOpacity(0.1),
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () => onTabTapped(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: currentPageIndex == 0 ? blueElement : Colors.grey,
                    ),
                    if (currentPageIndex == 0)
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentPageIndex == 0 ? blueElement : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () => onTabTapped(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history,
                      color: currentPageIndex == 1 ? blueElement : Colors.grey,
                    ),
                    if (currentPageIndex == 1)
                      Text(
                        "History",
                        style: TextStyle(
                          color: currentPageIndex == 1 ? blueElement : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 40), // space for the floating action button
              MaterialButton(
                minWidth: 40,
                onPressed: () => onTabTapped(2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      color: currentPageIndex == 2 ? blueElement : Colors.grey,
                    ),
                    if (currentPageIndex == 2)
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: currentPageIndex == 2 ? blueElement : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () => onTabTapped(3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentPageIndex == 3 ? blueElement : Colors.grey,
                    ),
                    if (currentPageIndex == 3)
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: currentPageIndex == 3 ? blueElement : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

