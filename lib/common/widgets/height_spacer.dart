import 'package:flutter/material.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({super.key, this.h =20});
  final double h;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
    );
  }
}
