import 'package:finflow/common/constants/colors.dart';
import 'package:finflow/common/widgets/appStyle.dart';
import 'package:finflow/common/widgets/height_spacer.dart';
import 'package:finflow/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            italicText("Hello Expenses", context, Theme.of(context).textTheme.headlineLarge,AppColors.darkBlue1),
            HeightSpacer(h: 16,),
            italicText("Hello Expenses", context, Theme.of(context).textTheme.headlineLarge,AppColors.darkBlue1)
          ],
        ),
      ),
    );
  }
}