import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/home_controller.dart';
import '../product_card.dart';

class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find(); // Get the controller

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top picks to Explore",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 300,
          child: Obx(
            () => ListView.builder(
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
