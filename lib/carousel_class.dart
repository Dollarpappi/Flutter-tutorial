import 'dart:js_util';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarouselClass extends StatefulWidget {
  const CarouselClass({super.key});

  @override
  State<CarouselClass> createState() => _CarouselClassState();
}

class _CarouselClassState extends State<CarouselClass> {
  final List<String> imgList = [
    "assets/images/coolguy.png",
    "assets/images/images (9).jpeg"
  ];
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CAROUSEL BROSWER"),
      ),
      body: CarouselSlider(
        carouselController: carouselController,
        items: imgList.map((images) {
          return Container(
            width: 500,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Image.asset(
              images,
              fit: BoxFit.fill,
            ),
          );
        }).toList(),
        options: CarouselOptions(
            initialPage: 0,
            height: 500,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 1),
            autoPlayAnimationDuration: const Duration(seconds: 2)),
      ),
    );
  }

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 0.0,
              )),
              onPressed: () {
                carouselController.nextPage(
                    duration: const Duration(
                  milliseconds: 56,
                ));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 32,
              )),
          stretch ? const Spacer() : const SizedBox(width: 32),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 1,
                ),
              ),
              onPressed: () {
                carouselController.previousPage(
                    duration: const Duration(milliseconds: 56));
              },
              child: const Icon(Icons.arrow_forward))
        ],
      );
}
 // how to use return
  // (e)=> conta   or
   //(e){
                      
  //return conta
                      //}