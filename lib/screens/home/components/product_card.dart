import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

import '../../../model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({super.key, required this.product});
  final RxBool isLiked = false.obs;

  @override
  Widget build(BuildContext context) {
    // Create an instance of the audio player
    // final assetsAudioPlayer = AssetsAudioPlayer();

    // Use GetX for the isLiked state

    return Card(
      color: Theme.of(context).brightness == Brightness.light
          ? const Color.fromARGB(255, 255, 255, 255) // Light mode color
          : Colors.grey[900],
      shadowColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 200.w,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.network(
                    product.imageUrl,
                    height: 200.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(product.location),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "₹${product.price} ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black // Light mode color
                                    : Colors.white,
                              ),
                            ),
                            const TextSpan(
                              text: "per day",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey, // Light grey color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10.h, // Adjust position as needed
              right: 10.w,
              child: Obx(
                () => LikeButton(
                  isLiked: isLiked.value,
                  size: 30.sp,
                  circleColor: const CircleColor(
                      start: Color(0xff00ddff), end: Color(0xff0099cc)),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border_rounded,
                      color: isLiked ? Colors.red : Colors.grey.shade100,
                      size: 30.sp,
                    );
                  },
                  onTap: (isLiked) async {
                    SystemSound.play(SystemSoundType.click);
                    HapticFeedback.lightImpact();

                    this.isLiked.toggle();
                    return !isLiked;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
