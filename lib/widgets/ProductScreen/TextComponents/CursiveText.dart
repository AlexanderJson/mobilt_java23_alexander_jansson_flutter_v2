import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ScreenService.dart';

class CursiveText extends StatelessWidget {
  final String text;
  final Color;
  const CursiveText({super.key, required this.text, required this.Color});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(

      text,
      style: TextStyle(
        fontSize: ScreenService.editFont(),
        fontStyle: FontStyle.italic,
        color: Color,
        letterSpacing: 1.5.w,
      ),
      textAlign: TextAlign.center,
      maxLines: 1,
      minFontSize: 5.sp,
      stepGranularity: 1.sp,
      overflow: TextOverflow.ellipsis,
    );
  }
}

