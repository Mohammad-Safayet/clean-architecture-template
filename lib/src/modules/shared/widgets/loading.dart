import 'package:clean_architecture/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const Loading({
    Key? key,
    required this.child,
    this.bgColor = Colors.black,
    this.padding,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: AppTheme.currentTheme.shadowColor.withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
        color: bgColor,
      ),
      child: CircularProgressIndicator(
        color: bgColor,
      ),
    );
  }
}