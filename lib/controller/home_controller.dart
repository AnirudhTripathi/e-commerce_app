import 'package:get/get.dart';

import '../model/product.dart';

class HomeController extends GetxController {
  final RxList<Product> topExperiences = [
    Product(
        id: '1',
        imageUrl:
            'https://ultracourts.com.au/wp-content/uploads/2022/12/Private-Tennis-Court-Red-Hill.jpg',
        title: 'PDP Tennis Court',
        location: 'Malabar Hill, Mumbai',
        price: 600),
    Product(
        id: '2',
        imageUrl:
            'https://ultracourts.com.au/wp-content/uploads/2022/12/Private-Tennis-Court-Red-Hill.jpg',
        title: 'PDP Tennis Court',
        location: 'Malabar Hill, Mumbai',
        price: 600),
    Product(
        id: '3',
        imageUrl:
            'https://ultracourts.com.au/wp-content/uploads/2022/12/Private-Tennis-Court-Red-Hill.jpg',
        title: 'PDP Tennis Court',
        location: 'Malabar Hill, Mumbai',
        price: 600),
    Product(
        id: '4',
        imageUrl:
            'https://ultracourts.com.au/wp-content/uploads/2022/12/Private-Tennis-Court-Red-Hill.jpg',
        title: 'PDP Tennis Court',
        location: 'Malabar Hill, Mumbai',
        price: 600),
  ].obs;

  // final RxList<Product> topPicks = [
  //   // ... products
  // ].obs;

  // final RxList<Product> popularNearYou = [
  //   // ... products
  // ].obs;
}
