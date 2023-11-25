import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_widgets/extensions/darkmode_extension.dart';

class SmoothButtonListTileSkeleton extends StatelessWidget {
  const SmoothButtonListTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 0.5,
            color: !context.isDarkMode
                ? Colors.black.withOpacity(0.03)
                : Colors.white.withOpacity(0.05),
          ),
        ),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        leading: AspectRatio(
          aspectRatio: 1 / 1,
          child: Shimmer(
            period: Duration(seconds: 2),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.8),
              ],
              stops: [0.5, 0.8],
            ),
            child: CircleAvatar(
              backgroundColor: !context.isDarkMode
                  ? Colors.black.withOpacity(0.01)
                  : Colors.white.withOpacity(0.05),
              foregroundColor: Color(0xff3B3B3B),
            ),
          ),
        ),
        focusColor: !context.isDarkMode
            ? Colors.black.withOpacity(0.1)
            : Colors.white.withOpacity(0.5),
        title: Shimmer(
          period: Duration(seconds: 2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.black.withOpacity(0.8),
            ],
            stops: [0.5, 0.8],
          ),
          child: Container(
            width: 50,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: !context.isDarkMode
                  ? Colors.black.withOpacity(0.01)
                  : Colors.white.withOpacity(0.05),
            ),
          ),
        ),
        subtitle: Shimmer(
          period: Duration(seconds: 2),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.black.withOpacity(0.8),
            ],
            stops: [0, 1],
          ),
          child: Container(
            width: 100,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: !context.isDarkMode
                  ? Colors.black.withOpacity(0.01)
                  : Colors.white.withOpacity(0.05),
            ),
          ),
        ),
        trailing: Shimmer(
          period: Duration(seconds: 2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.black.withOpacity(0.8),
            ],
            stops: [0.5, 0.8],
          ),
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: !context.isDarkMode
                  ? Colors.black.withOpacity(0.01)
                  : Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
