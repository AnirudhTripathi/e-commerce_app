import 'package:assignment_shopping/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../category_tile.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryTile(
                label: "Automobile",
                icon:
                    'https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png',
              ),
              CategoryTile(
                label: "Real Estate",
                icon:
                    'https://cdn.pixabay.com/photo/2013/07/13/12/48/cottage-160367_1280.png',
              ),
              CategoryTile(
                  label: "Sports",
                  icon:
                      "https://cdn.pixabay.com/photo/2013/07/12/14/07/basketball-147794_1280.png"),
              CategoryTile(
                label: "Book",
                icon:
                    'https://cdn.pixabay.com/photo/2015/06/11/00/55/book-805405_1280.png',
              ),
              CategoryTile(
                label: "Jewellery",
                icon:
                    'https://cdn.pixabay.com/photo/2016/11/25/07/00/diamond-1857736_1280.png',
              ),
              CategoryTile(
                label: "Flowers",
                icon:
                    'https://cdn.pixabay.com/photo/2018/03/02/09/19/flower-marigolds-3192686_960_720.png',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 80.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryTile(
                label: "Furniture",
                icon:
                    'https://cdn.pixabay.com/photo/2017/01/30/23/59/armchairs-2022418_1280.png',
              ),
              CategoryTile(
                label: "Electronics",
                icon:
                    'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png',
              ),
              CategoryTile(
                  label: "Fashion",
                  icon:
                      "https://cdn.pixabay.com/photo/2013/07/12/18/22/t-shirt-153366_1280.png"),
              CategoryTile(
                label: "Jewellery",
                icon:
                    'https://cdn.pixabay.com/photo/2016/11/25/07/00/diamond-1857736_1280.png',
              ),
              CategoryTile(
                label: "Flowers",
                icon:
                    'https://cdn.pixabay.com/photo/2018/03/02/09/19/flower-marigolds-3192686_960_720.png',
              ),
              CategoryTile(
                label: "Book",
                icon:
                    'https://cdn.pixabay.com/photo/2015/06/11/00/55/book-805405_1280.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
