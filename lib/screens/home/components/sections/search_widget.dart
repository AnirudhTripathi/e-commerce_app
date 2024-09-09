import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? const Color.fromARGB(255, 255, 255, 255) // Light mode color
            : Colors.grey[800], // Dark mode color
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 6, // Blur radius for softer edges
            offset: const Offset(0, 3), // Horizontal & vertical offset
          ),
        ],
      ),
      child: TextField(
        textAlign: TextAlign.center, // Center text and hint text
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Icon(
              Icons.search,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey[500] // Light mode color
                  : Colors.white,
            ),
          ),
          border: InputBorder.none, // Remove the default border
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.0.h,
            horizontal: 16.w,
          ), // Padding for text
          prefixIconConstraints: BoxConstraints(
            minWidth: 5.w, // Adjust the space for the icon
          ),
          // Add a Row to center the content
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 143, 142, 142), fontSize: 16),
          // Add a Row to center the content
          suffixIcon: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min, // Make Row as small as possible
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add some space between the image and text
                Text(
                  'Search on',
                  style: TextStyle(
                      color: Color.fromARGB(255, 143, 142, 142),
                      fontSize: 16.sp),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/chat-app-9b271.appspot.com/o/loading-16-svgrepo-com%201.png?alt=media&token=e698f9b8-1091-4d90-b53f-2d301a71b6c9', // Replace with your image URL
                    height: 20.h, // Adjust the image height as needed
                  ),
                ),
                Text(
                  'Renit',
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black // Light mode color
                        : Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
