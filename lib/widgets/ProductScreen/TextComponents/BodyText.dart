import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ScreenService.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color;
  final fontSize;
  const BodyText({super.key, required this.text, required this.Color, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
        fontSize: ScreenService.editFont(),
        color: Color,
        letterSpacing: 1.5.w,
      ),
      textAlign: TextAlign.center,
      maxLines: 1,
      minFontSize: 8.sp,
      stepGranularity: 1.sp,
      overflow: TextOverflow.ellipsis,
    );
  }
}
