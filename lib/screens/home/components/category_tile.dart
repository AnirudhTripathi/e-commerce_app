import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTile extends StatelessWidget {
  final String icon;
  final String label;
  const CategoryTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.w), // Responsive margin
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            icon,
            width: 80.w,
            height: 50.w,
          ), // Responsive icon size
          SizedBox(height: 10.h), // Responsive SizedBox height
          Text(
            label,
            style: TextStyle(fontSize: 14.sp),
          ), // Responsive font size
        ],
      ),
    );
  }
}
