
import 'package:finflow/common/constants/images.dart';
import 'package:finflow/common/widgets/height_spacer.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart'; 

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 19.0),
        child: SizedBox(
            height: 200,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.4),
                      Colors.white.withOpacity(0.2)
                    ]),
                    // color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1.5,
                    ),
                  ),
                  // alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //! <---- visa logo -----> //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AppImages.visaSvg,
                              height: 50,
                            ),
                          ],
                        ),
                        const HeightSpacer(h: 40),
                        Row(
                          children: [
                            Text('1029 7867 9821 4312',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .apply(color: Colors.white,fontSizeDelta: 2)),
                          ],
                        ),
                        const HeightSpacer(h: 20),
                        Row(
                          children: [
                            Text('John Doe',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: Colors.white)),
                          ],
                        ),
                        const HeightSpacer(h: 5),
                        Row(
                          children: [
                            Text('09/26',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        
      
    );
  }
}
