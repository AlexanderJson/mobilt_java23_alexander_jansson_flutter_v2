// denna klass är bra för content som behöver vikt, t.ex priser osv.


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widgets/ProductScreen/TextComponents/BodyText.dart';

import '../ScreenService.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color;
  const HeaderText({super.key, required this.text, required this.Color});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style:  TextStyle(
        fontSize: ScreenService.editFont(),
        fontWeight: FontWeight.bold,
        color: Color,
        letterSpacing: 1.5.sp,
      ),
      textAlign: TextAlign.center,
      maxLines: 1,
      minFontSize: 5.sp,
      stepGranularity: 1.sp,
      overflow: TextOverflow.ellipsis,
    );
  }
}

