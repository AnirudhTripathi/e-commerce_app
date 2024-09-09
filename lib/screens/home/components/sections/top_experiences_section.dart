import 'package:assignment_shopping/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../controller/home_controller.dart';
import '../product_card.dart';

class TopExperiencesSection extends StatelessWidget {
  const TopExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find(); // Get the controller

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top experiences",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 300.h,
          child: Obx(
            () => ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: homeController.topExperiences.length,
              itemBuilder: (context, index) {
                final product = homeController.topExperiences[index];
                return ProductCard(product: product);
              },
            ),
          ),
        ),
      ],
    );
  }
}
