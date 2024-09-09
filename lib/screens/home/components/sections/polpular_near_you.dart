import 'package:assignment_shopping/controller/home_controller.dart';
import 'package:assignment_shopping/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class PolpularNearYou extends StatelessWidget {
  const PolpularNearYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find(); // Get the controller

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular Near you",
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
