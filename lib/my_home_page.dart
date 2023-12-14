import 'package:flavored_ice_cream/clip_half_circle.dart';
import 'package:flavored_ice_cream/clip_triangle.dart';
import 'package:flavored_ice_cream/flavored_values/flavored_colors.dart';
import 'package:flavored_ice_cream/flavored_values/flavors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.flavor});

  final Flavors flavor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: AspectRatio(
              aspectRatio: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            const Expanded(child: SizedBox()),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlavoredColors.ballColor2(flavor),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipPath(
                                  clipper: ClipHalfCircle(),
                                  clipBehavior: Clip.hardEdge,
                                  child: Container(
                                    color: FlavoredColors.ballColor0(flavor),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipPath(
                                  clipper: ClipHalfCircle(),
                                  clipBehavior: Clip.hardEdge,
                                  child: Container(
                                    color: FlavoredColors.ballColor1(flavor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: ClipPath(
                                clipper: ClipTriangle(),
                                clipBehavior: Clip.hardEdge,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromARGB(
                                          255,
                                          210,
                                          177,
                                          107,
                                        ),
                                        Color.fromARGB(
                                          255,
                                          147,
                                          118,
                                          64,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
