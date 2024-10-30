import 'package:flutter/cupertino.dart';


class HomescreenUpper extends StatelessWidget {
  const HomescreenUpper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
