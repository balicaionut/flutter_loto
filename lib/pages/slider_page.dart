import 'package:flutter/material.dart';

import '../services/random_generator.dart';
import '../widgets/app_button.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  List images = ["loto-649.png", "loto-joker.png", "loto-540.png"];
  List numbers = [6, 5, 6];


  final fiveOfFortyFive = nextNumbers(6, min: 1, max: 40);
  final joker = nextNumber(min: 1, max: 20);
  final fiveOfForty = nextNumbers(6, min: 1, max: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/luck.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              "assets/img/" + images[index],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                            children: List.generate(numbers[index], (i) {
                          return AppButton(
                              size: 60,
                              color: Colors.black,
                              backgroundColor: Colors.lightGreen.shade50,
                              borderColor: Colors.lightGreen,
                              text: index == 0
                                  ? (i + 1).toString() + " 6/49"
                                  : (index == 1
                                      ? (i + 1).toString() + " J"
                                      : (i + 1).toString() + " 5/40"));
                        })),
                        index == 1
                            ? Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('Joker:'),
                                  AppButton(
                                      size: 60,
                                      color: Colors.black,
                                      backgroundColor:
                                          Colors.lightGreen.shade50,
                                      borderColor: Colors.lightGreen,
                                      text: index == 1 ? "Joker" : "")
                                ],
                              )
                            : const SizedBox(
                                width: 0,
                                height: 0,
                              )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
