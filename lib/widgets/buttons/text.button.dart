// ignore_for_file: must_be_immutable

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class SmoothTextButton extends StatelessWidget {
  final String title;
  bool? isLoading = true;
  Color? backgroundColor;
  bool? isActive;
  VoidCallback? onPressed;

  SmoothTextButton({
    super.key,
    required this.title,
    this.isLoading,
    this.backgroundColor = Colors.white,
    this.isActive = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: backgroundColor != null
          ? BoxDecoration(
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.03)),
              borderRadius: SmoothBorderRadius(
                cornerRadius: 10,
                cornerSmoothing: 0.5,
              ),
            )
          : ShapeDecoration(
              color: Colors.black,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 10,
                  cornerSmoothing: 0.5,
                ),
              ),
            ),
      child: TextButton(
        onPressed: isActive != false ? onPressed : null,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Colors.black.withOpacity(0.01);
          }),
        ),
        child: isLoading != true
            ? Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: backgroundColor != null
                      ? isActive != true
                          ? Colors.black.withOpacity(0.5)
                          : Colors.black
                      : isActive != true
                          ? Colors.white.withOpacity(0.5)
                          : Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )
            : SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: backgroundColor,
                  strokeWidth: 1,
                ),
              ),
      ),
    );
  }
}
