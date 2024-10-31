import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ScreenService.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String content;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
      return  ExpansionTile(
        title: AutoSizeText(
          title,
          maxLines: 1,
          minFontSize: 4.sp,
          stepGranularity: 1.sp,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: ScreenService.editExpansionFont()),
        ),
        children: [
              SingleChildScrollView(
              child: AutoSizeText(
                content,
                style: TextStyle(fontSize: ScreenService.editExpansionFont(),),
                maxLines: 1,
                minFontSize: 4.sp,
                stepGranularity: 1.sp,
                overflow: TextOverflow.ellipsis,
              ),
            ),

        ],
    );
  }
}
