import 'package:flutter/material.dart';

class CardDecoration extends StatelessWidget {
  const CardDecoration({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
    required this.onTap,
  }) : super(key: key);
  final double height;
  final double width;
  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffE9F7EF),
        ),
        child: Card(borderOnForeground: true, elevation: 5, child: child),
      ),
    );
  }
}
