import 'package:flutter/cupertino.dart';


class HomescreenMiddle extends StatelessWidget {
  const HomescreenMiddle({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
