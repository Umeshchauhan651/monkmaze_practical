import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkmaze_practical/utility/constant_file.dart';
import 'package:sizing/sizing.dart';

class CustomContinueNextButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final TextStyle? textStyle;
  final double? borderRadius;
  final double? elevation;

  const CustomContinueNextButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.textStyle,
    this.borderRadius,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 32.ss,
      width: width ?? 340.ss,
      decoration: color == null ? boxDecoratioAppBTN : const BoxDecoration(),
      child: MaterialButton(
        onPressed: onTap,
        color: color ?? HexColor("#019BFD"),
        elevation: elevation ?? 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          side: BorderSide(color: AppColors.BLACK.withOpacity(0.1), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Text(
            buttonText ?? "",
            style: textStyle ??
                GoogleFonts.manrope(
                  fontSize: FontSize.FONT_SIZE_14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.BLACK,
                ),
          ),
        ),
      ),
    );
  }
}
