import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart'; // Import the colors you defined

class AppTextStyles {
  // Title (Main Heading)
  static TextStyle get title => GoogleFonts.workSans(
        fontSize: 34.0, // Adjust based on your preference (32-36px)
        fontWeight: FontWeight.bold,
        color: AppColors.onPrimary, // Use Soft Ivory for contrast on primary
      );

  // Subtitle
  static TextStyle get subtitle => GoogleFonts.workSans(
        fontSize: 26.0, // Adjust based on your preference (24-28px)
        fontWeight: FontWeight.w700, // Medium
        color: AppColors.onPrimary, // Use Soft Ivory for subtitle text
      );

  // Paragraph Text (Body Text)
  static TextStyle get bodyText => GoogleFonts.workSans(
        fontSize: 15.0, // Adjust based on your preference (14-16px)
        fontWeight: FontWeight.normal,
        height: 1.5, // Line height for readability
        color: AppColors.onSurface, // Use Dark Charcoal for body text
      );

  // Button Text
  static TextStyle get buttonText => GoogleFonts.workSans(
        fontSize: 17.0, // Adjust based on your preference (16-18px)
        fontWeight: FontWeight.w600, // Semi-Bold
        color: AppColors.onPrimary, // Button text should be Soft Ivory for contrast
      );

  // Caption/Secondary Text
  static TextStyle get captionText => GoogleFonts.workSans(
        fontSize: 13.0, // Adjust based on your preference (12-14px)
        fontWeight: FontWeight.normal,
        color: AppColors.outline, // Use Grayish White for captions
      );

  // Input Fields (Placeholder Text)
  static TextStyle get inputPlaceholderText => GoogleFonts.workSans(
        fontSize: 15.0, // Adjust based on your preference (14-16px)
        fontWeight: FontWeight.normal,
        color: AppColors.outline, // Use Grayish White for placeholder text
        fontStyle: FontStyle.italic, // Placeholder text style
      );

  // Small Text (Details like dates, statuses)
  static TextStyle get smallText => GoogleFonts.workSans(
        fontSize: 11.0, // Adjust based on your preference (10-12px)
        fontWeight: FontWeight.w300, // Light
        color: AppColors.onSurface, // Use Dark Charcoal for small text
      );
}
