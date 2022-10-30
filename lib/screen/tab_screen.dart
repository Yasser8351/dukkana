import 'package:dokana/screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_config/app_config.dart';
import '../sharedpref/user_share_pref.dart';
import 'all_settings/settings_screen.dart';
import 'home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectIndex = 2;
  DateTime timeBackPressed = DateTime.now();

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    const SettingsScreen(),
    const CartScreen(),
    const HomeScreen(),
  ];

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() async {
    // SharedPrefUser sharedPrefUser = SharedPrefUser();
    // await sharedPrefUser.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: WillPopScope(
              onWillPop: () async {
                final differenc = DateTime.now().difference(timeBackPressed);
                final exitApp = differenc >= const Duration(seconds: 2);

                timeBackPressed = DateTime.now();

                if (exitApp) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Theme.of(context).primaryColor,
                      duration: const Duration(seconds: 2),
                      content: const Text(
                        AppConfig.exitApp,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  );
                  return false;
                } else {
                  return true;
                }
              },
              child: Scaffold(
                body: _pages[_selectIndex],
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectIndex,
                  onTap: _navigateBottomBar,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings),
                      label: AppConfig.settings,
                    ),
                    // BottomNavigationBarItem(
                    //   icon: Icon(Icons.content_paste_go),
                    //   label: AppConfig.project,
                    // ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.cart),
                      label: AppConfig.carts,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home),
                      label: AppConfig.home,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
