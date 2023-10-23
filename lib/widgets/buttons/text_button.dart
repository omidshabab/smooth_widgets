// ignore_for_file: must_be_immutable

// Import necessary packages
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

// Define the SmoothTextButton widget as a StatelessWidget
class SmoothTextButton extends StatelessWidget {
  // Define the widget properties
  final String title; // The button text
  bool? isLoading = true; // Whether the button should show a loading indicator
  Color? backgroundColor; // The button background color
  bool? isActive; // Whether the button is active and can be pressed
  VoidCallback? onPressed; // The function to call when the button is pressed

  // Define the widget constructor with the required properties
  SmoothTextButton({
    super.key, // The optional key parameter
    required this.title,
    this.isLoading,
    this.backgroundColor = Colors.white,
    this.isActive = true,
    this.onPressed,
  });

  // Define the widget build method
  @override
  Widget build(BuildContext context) {
    // Create a container widget that will contain the button
    return Container(
      width: double
          .infinity, // Set the container width to fill the available space
      height: 55, // Set the container height to a fixed value
      // Set the container decoration to a smooth rounded corner and squircle shape
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
      // Create the button widget as a TextButton
      child: TextButton(
        // Set the button press function to the provided onPressed function if the button is active
        onPressed: isActive != false ? onPressed : null,
        // Set the button style to a smooth rounded rectangle with an overlay color when pressed
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
        // Set the child of the button to either the provided text or a loading indicator
        child: isLoading != true
            ? Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // Set the text color based on whether a background color is provided and whether the button is active
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
