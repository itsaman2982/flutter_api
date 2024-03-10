import 'package:flutter/material.dart';
import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';

class NormalButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Icon? icon;
  final double borderRadius;
  final List<Color>? gradientColors;

  const NormalButton({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.height = 50,
    this.fontWeight = FontWeight.w700,
    this.icon,
    this.borderRadius = 25,
    this.gradientColors,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors ?? [AppColors.linear2, AppColors.linear1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Container(
            width: double.infinity,
            height: height,
            alignment: Alignment.center,
            child: icon == null
                ? Text(
                    text,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: Colors.white),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon!,
                      8.sbw,
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: fontWeight,
                            color: Colors.white),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
