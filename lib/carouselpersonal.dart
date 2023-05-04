import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ziddidle extends StatefulWidget {
  const Ziddidle({super.key});

  @override
  State<Ziddidle> createState() => _ZiddidleState();
}

class _ZiddidleState extends State<Ziddidle> {
  int activeIndex = 0;
  CarouselController controller = CarouselController();
  final List<String> assetList = [
    'assets/images/images (1).jpeg',
    'assets/images/images (2).jpeg',
    'assets/images/images (3).jpeg',
    'assets/images/istockphoto-992637094-612x612.jpg',
    'assets/images/istockphoto-1306406393-612x612.jpg',
    'assets/images/602bdaaf55329_09886vjaime51__700.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image:
              AssetImage("assets/images/annie-spratt-0ZPSX_mQ3xI-unsplash.jpg"),
          fit: BoxFit.cover,
        )),
        //    padding: EdgeInsets.all(40),
        child: Center(
          child: Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: assetList.length,
                    itemBuilder: (context, index, realIndex) {
                      final assetLists = assetList[index];
                      return buildImage(assetLists, index);
                    },
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayInterval: Duration(seconds: 2),
                        onPageChanged: ((index, reason) => setState(
                              () => activeIndex = index,
                            ))))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String assetLists, int index) => Container(
        child: Image.asset(
          assetLists,
          fit: BoxFit.cover,
        ),
      );
}
