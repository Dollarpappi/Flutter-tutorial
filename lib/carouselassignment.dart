import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AssignmentCa extends StatefulWidget {
  const AssignmentCa({super.key});

  @override
  State<AssignmentCa> createState() => _AssignmentCaState();
}

class _AssignmentCaState extends State<AssignmentCa> {
  int activeIndex = 0;

  final List<String> assetList = [
    'assets/images/images (1).jpeg',
    'assets/images/images (2).jpeg',
    'assets/images/images (3).jpeg',
    'assets/images/istockphoto-992637094-612x612.jpg',
    'assets/images/istockphoto-1306406393-612x612.jpg',
    'assets/images/602bdaaf55329_09886vjaime51__700.jpg',
  ];
  CarouselController controller = CarouselController();

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/annie-spratt-0ZPSX_mQ3xI-unsplash.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: assetList.length,
                  itemBuilder: (context, index, realIndex) {
                    final assetlists = assetList[index];

                    return buildImage(assetlists, index);
                  },
                  options: CarouselOptions(
                    height: 400,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  )),
              SizedBox(
                height: 20,
              ),
              buildIndicator(),
              SizedBox(
                height: 40,
              ),
              buildButtons(),
            ],
          ),
        ),
      ),
    );
  }

// IMPORT THE PACKAGE
  /*Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: assetList.length,
  
              child: const Icon(Icons.arrow_forward))
        ],
      );*/

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: assetList.length,
        effect: JumpingDotEffect(dotHeight: 5, dotWidth: 6),
      );

  Widget buildImage(String assetlists, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        color: Colors.grey,
        child: Image.asset(
          assetlists,
          fit: BoxFit.cover,
        ),
      );
  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  backgroundColor: Color.fromARGB(255, 188, 185, 185)),
              onPressed: previous,
              child: Icon(
                Icons.arrow_back,
                size: 32,
              )),
          stretch
              ? Spacer()
              : SizedBox(
                  width: 32,
                ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  backgroundColor: Color.fromARGB(255, 188, 185, 185)),
              onPressed: next,
              child: Icon(
                Icons.arrow_forward,
                size: 32,
              ))
        ],
      );
  void next() => controller.nextPage(duration: Duration(microseconds: 300));
  void previous() =>
      controller.previousPage(duration: Duration(microseconds: 300));
}
