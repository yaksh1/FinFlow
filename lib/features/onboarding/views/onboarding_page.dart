import 'package:finflow/common/constants/colors.dart';
import 'package:finflow/common/constants/images.dart';
import 'package:finflow/common/widgets/height_spacer.dart';
import 'package:finflow/features/onboarding/widgets/my_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math' as math;

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  floatingActionButton: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.circular(100)
      ),
      child:Transform.rotate(
        angle: math.pi / 4,
        child: const Icon(
          Icons.arrow_upward,
          size: 40,
        ),
      ),
    ),
  ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.blurLogo, 
                      height: 80,
                      ),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xff8c52ff), Color(0xffff914d)], // Gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,   
                      ).createShader(bounds),
                      child: const Text(
                        'FinFlow ',
                        style: TextStyle(
                          color: Colors
                              .white, // This color is necessary but not visible due to the shader
                          fontSize: 50,
                          fontWeight: FontWeight.w700, // Adjust the font size as needed
                          shadows: [
                            Shadow(
                              // Shadow positioned directly behind the text
                              blurRadius: 10.0,
                              color: Color(0xff8c52ff),
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              // Additional shadow for more glow effect
                              blurRadius: 10.0,
                              color: Color(0xffffde59),
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const HeightSpacer(h: 40),
                const MyCard().animate().slide(
                    duration: 400.ms,
                    begin: const Offset(5, 0),
                    end: const Offset(0, 0)),
                const HeightSpacer(),

                RichText(
                  text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .apply(fontWeightDelta: 3, color: Colors.white),
                    children: const <TextSpan>[
                      TextSpan(text: 'Manage your '),
                      TextSpan(
                        text: 'expenses',
                        style: TextStyle(color: AppColors.purple),
                      ),
                      TextSpan(text: ' more easily'),
                    ],
                  ),
                ),
                const HeightSpacer(
                    h: 10), // Adjust the height as needed for spacing
                Text(
                  'Easily track expenses, streamline budgeting, financial management made simple.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: Colors.white.withOpacity(0.7)),
                  // textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

