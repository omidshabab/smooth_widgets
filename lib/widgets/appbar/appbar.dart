// ignore_for_file: must_be_immutable

// Importing the ui library from dart, which provides low-level access to graphics and input

import 'dart:ui';

// Importing necessary  from the material package and a custom widget
import 'package:flutter/material.dart';
import 'package:smooth_widgets/extensions/darkmode.extension.dart';
import 'package:smooth_widgets/widgets/buttons/icon.button.dart';

// A stateless representing a custom app bar with smooth buttons
class SmoothAppbar extends StatelessWidget {
  // Class properties, including the title and icons with their associated callbacks
  String? title;
  VoidCallback? titleOnTap;
  IconData? leftIcon;
  VoidCallback? leftIconOnPressed;
  IconData? rightIcon;
  VoidCallback? rightIconOnPressed;
  PreferredSizeWidget? bottom;

  // Constructor for the class, using named parameters
  SmoothAppbar({
    super.key,
    this.title,
    this.titleOnTap,
    this.leftIcon,
    this.rightIcon,
    this.leftIconOnPressed,
    this.rightIconOnPressed,
    this.bottom,
  });

  // Build method to create the app bar widget
  @override
  build(BuildContext context) {
    // Adding a directionality to ensure correct layout based on text direction
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 65.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: !context.isDarkMode
                      ? const Color(0xffF1F1F1).withOpacity(0.5)
                      : const Color(0xffF1F1F1).withOpacity(0.1),
                ),
              ),
            ),
            child: AppBar(
              backgroundColor: !context.isDarkMode
                  ? Colors.white.withOpacity(0)
                  : Colors.black.withOpacity(0),
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
                  title!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: !context.isDarkMode ? Colors.black : Colors.white,
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
              bottom: bottom,
            ),
          ),
        ),
      ),
    );
  }
}
