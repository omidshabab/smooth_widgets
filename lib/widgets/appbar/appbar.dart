// ignore_for_file: must_be_immutable

// Importing the ui library from dart, which provides low-level access to graphics and input

import 'dart:ui';

// Importing necessary widgets from the material package and a custom widget
import 'package:flutter/material.dart';
import 'package:smooth_widgets/widgets/buttons/icon.button.dart';

// A stateless widget representing a custom app bar with smooth buttons
class SmoothAppbar extends StatelessWidget {
  // Class properties, including the title and icons with their associated callbacks
  String? title;
  VoidCallback? titleOnTap;
  IconData? leftIcon;
  VoidCallback? leftIconOnPressed;
  IconData? rightIcon;
  VoidCallback? rightIconOnPressed;

  // Constructor for the class, using named parameters
  SmoothAppbar({
    super.key,
    this.title,
    this.titleOnTap,
    this.leftIcon,
    this.rightIcon,
    this.leftIconOnPressed,
    this.rightIconOnPressed,
  });

  // Build method to create the app bar widget
  @override
  Widget build(BuildContext context) {
    // Adding a directionality widget to ensure correct layout based on text direction
    return Directionality(
      textDirection: TextDirection.rtl,
      // Adding a clip rect widget to clip the backdrop filter
      child: ClipRect(
        // Adding a backdrop filter widget to add a blur effect to the container
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 65.0),
          // A container widget with padding and a border to hold the app bar
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: const Color(0xffF1F1F1).withOpacity(0.5),
                ),
              ),
            ),
            // Adding an app bar widget with a transparent background, smooth icons, and a title with a callback
            child: AppBar(
              backgroundColor: Colors.white.withOpacity(0),
              leadingWidth: 50,
              leading: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: SmoothIconButton(
                    onPressed: rightIconOnPressed!,
                    icon: rightIcon!,
                  ),
                ),
              ),
              title: GestureDetector(
                onTap: titleOnTap,
                child: Text(
                  "$title",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SmoothIconButton(
                    onPressed: leftIconOnPressed!,
                    icon: leftIcon!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
