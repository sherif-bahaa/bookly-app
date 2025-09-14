import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    this.borderRadius,
    required this.style,
  });
  final TextStyle? style;
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,

          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ??
                BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: style),
      ),
    );
  }
}
