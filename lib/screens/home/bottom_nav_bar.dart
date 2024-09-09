import 'package:assignment_shopping/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    final List<PersistentTabConfig> _tabs = [
      PersistentTabConfig(
        screen: HomeScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.home),
          title: "Home",
          iconSize: 30.sp,
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          inactiveIcon: const Icon(Icons.home_outlined),
          activeForegroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black // Light mode active color
                  : Colors.white, // Dark mode active color
        ),
      ),
      PersistentTabConfig(
        screen: Container(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white // Light mode active color
              : Colors.black, // Dark mode active color
        ),
        item: ItemConfig(
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          icon: const Icon(Icons.favorite),
          title: "Saved",
          iconSize: 27.sp,
          activeForegroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black // Light mode active color
                  : Colors.white, // Dark mode active color
          inactiveIcon: const Icon(Icons.favorite_outline_rounded),
        ),
      ),
      PersistentTabConfig(
        screen: Container(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white // Light mode active color
              : Colors.black,
        ),
        item: ItemConfig(
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          icon: const Icon(Icons.add_box),
          title: "Post",
          iconSize: 27.sp,
          activeForegroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black // Light mode active color
                  : Colors.white, // Dark mode active color
          inactiveIcon: const Icon(Icons.add_box_outlined),
        ),
      ),
      PersistentTabConfig(
        screen: Container(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white // Light mode active color
              : Colors.black,
        ),
        item: ItemConfig(
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          icon: const Icon(Icons.messenger),
          title: "Chat",
          iconSize: 27.sp,
          activeForegroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black // Light mode active color
                  : Colors.white, // Dark mode active color
          inactiveIcon: const Icon(Icons.messenger_outline),
        ),
      ),
      PersistentTabConfig(
        screen: Container(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.white // Light mode active color
              : Colors.black,
          child: Center(),
        ),
        item: ItemConfig(
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
          icon: const Icon(Icons.person),
          title: "Profile",
          iconSize: 27.sp,
          activeForegroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.black // Light mode active color
                  : Colors.white, // Dark mode active color
          inactiveIcon: const Icon(Icons.person_3_outlined),
        ),
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15.h),
        child: PersistentTabView(
          navBarBuilder: (navBarConfig) => Style1BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: NavBarDecoration(
              boxShadow: [
                // Add box shadow here
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -3), // changes position of shadow
                ),
              ],
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          tabs: _tabs,
        ),
      ),
    );
  }
}
