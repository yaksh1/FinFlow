import 'package:finflow/common/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/logo_glow.png")
              // SvgPicture.asset(
              //     "assets/images/blurLogo.svg",
              //     height: 200,
              //     width: 70,
              //   ),
              ],
          ),
        ),
      ),
    );
  }
}
