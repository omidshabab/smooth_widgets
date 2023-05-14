// ignore_for_file: must_be_immutable

// Import the dart:ui and flutter/material libraries

import 'dart:ui';
import 'package:flutter/material.dart';

// Create a custom widget called SmoothIconButton that extends StatelessWidget
class SmoothIconButton extends StatelessWidget {
  // Define the required fields for the SmoothIconButton widget
  final IconData icon;
  late VoidCallback onPressed;

  // Define the constructor for the SmoothIconButton widget
  SmoothIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  // Build the SmoothIconButton widget
  @override
  Widget build(BuildContext context) {
    // Use a ClipRRect widget to create a circular border radius for the widget
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      // Use a BackdropFilter widget to apply a blur effect to the widget
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 20.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                width: 1, color: const Color(0xffF1F1F1).withOpacity(0.5)),
            borderRadius: BorderRadius.circular(50),
          ),
          // Use an InkWell widget to create an interactive container for the icon
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            hoverColor: Colors.black.withOpacity(0.01),
            splashColor: Colors.black.withOpacity(0.01),
            focusColor: Colors.black.withOpacity(0.01),
            highlightColor: Colors.black.withOpacity(0.01),
            onTap: onPressed,
            // Display the icon as a child of the InkWell widget
            child: Icon(
              icon,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
