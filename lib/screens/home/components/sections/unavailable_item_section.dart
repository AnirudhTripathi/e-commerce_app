import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnavailableItemSection extends StatelessWidget {
  const UnavailableItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border.all(
          width: .2,
          color: Colors.purple,
        ),
        color: Theme.of(context).brightness == Brightness.light
            ? Color(0xFFEEEDFD) // Light mode color
            : Colors.purple.shade100,
        // Light purple background
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          // Icon Container
          Padding(
            padding: EdgeInsets.only(bottom: 80.h),
            child: Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF), // White background for the icon
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: const Icon(
                Icons.rocket_launch,
                // Using rocket icon from Flutter
                color: Color(0xFF6F4FF2), // Purple color for the icon
              ),
            ),
          ),
          SizedBox(
            width: 16.w,
          ), // Spacing between the icon and text
          // Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Don\'t see what you need?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Request a product & we’ll do our best to get it on Rentit for you!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF635AE7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {
                    // Add navigation or logic for the button here
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Unavailability form",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
