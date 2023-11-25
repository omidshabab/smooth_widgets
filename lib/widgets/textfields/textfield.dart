import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmoothTextField extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconOnPressed;
  final IconData? prefixIcon;
  final VoidCallback? prefixIconOnPressed;
  final bool? obscureText;
  final TextEditingController? textfieldController;
  final int? minLines;
  final int? maxLines;
  final bool? enabled;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const SmoothTextField({
    Key? key,
    required this.hintText,
    required this.suffixIcon,
    required this.suffixIconOnPressed,
    required this.prefixIcon,
    required this.prefixIconOnPressed,
    required this.obscureText,
    required this.textfieldController,
    required this.minLines,
    required this.maxLines,
    required this.enabled,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textfieldController,
      onChanged: onChanged != null ? (newValue) => onChanged!(newValue) : null,
      style: const TextStyle(fontSize: 15),
      cursorColor: Colors.black,
      obscureText: obscureText ?? false,
      minLines: minLines,
      maxLines: maxLines,
      enabled: enabled,
      scrollPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      validator: validator,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        hintStyle: TextStyle(
            fontSize: 15, height: 2, color: Colors.black.withOpacity(0.5)),
        focusColor: Colors.black,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 50),
                  width: 45,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: prefixIconOnPressed,
                    child:
                        Icon(prefixIcon, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 50),
                  width: 45,
                  decoration: BoxDecoration(
                      border: Border(
                    left: BorderSide(
                        width: 1,
                        color: const Color(0xffF1F1F1).withOpacity(0.5)),
                  )),
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: suffixIconOnPressed,
                    child: Icon(suffixIcon,
                        weight: 23, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: const Color(0xffF1F1F1).withOpacity(0.5)),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: const Color(0xffF1F1F1).withOpacity(0.5)),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: const Color(0xffF1F1F1).withOpacity(0.9)),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: const Color(0xffF1F1F1).withOpacity(0.5)),
          borderRadius: SmoothBorderRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
        ),
        errorMaxLines: 1,
        errorStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
      ),
      inputFormatters: [
        TextInputFormatter.withFunction(
          (oldValue, newValue) {
            return newValue.copyWith();
          },
        )
      ],
    );
  }
}
