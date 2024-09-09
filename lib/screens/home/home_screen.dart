import 'package:assignment_shopping/controller/home_controller.dart';
import 'package:assignment_shopping/screens/home/components/sections/polpular_near_you.dart';
import 'package:assignment_shopping/screens/home/components/sections/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'components/sections/categories_section.dart';
import 'components/sections/top_experiences_section.dart';
import 'components/sections/top_picks_section.dart';
import 'components/sections/unavailable_item_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(),
              SizedBox(height: 50.h),
              CategoriesSection(),
              SizedBox(height: 20.h),
              TopExperiencesSection(),
              TopPicksSection(),
              PolpularNearYou(),
              // PopularNearYouSection(),
              SizedBox(height: 20.h),
              UnavailableItemSection()
            ],
          ),
        ),
      ),
    );
  }
}
