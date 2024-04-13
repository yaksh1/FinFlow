import 'package:finflow/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';


Widget italicText(String text, BuildContext context, TextStyle? style,Color color) {
  TextStyle defaultStyle = Theme.of(context).textTheme.bodyMedium!; // Default style if none specified
  TextStyle effectiveStyle = style ?? defaultStyle;

  return ReusableText(
    text: text,
    
    style: effectiveStyle.apply(
      color: color,
      fontStyle: FontStyle.italic,),
  );
}