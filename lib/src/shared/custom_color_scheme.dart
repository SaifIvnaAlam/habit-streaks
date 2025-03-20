import 'package:flutter/material.dart';
import 'app_colors.dart';  // Import the color definitions

final ColorScheme customColorScheme = ColorScheme(
  brightness: Brightness.light,  // Choose light or dark mode
  primary: AppColors.primary,  // Primary color for key UI elements
  onPrimary: AppColors.onPrimary,  // Text/icons on the primary color (light color)
  primaryContainer: AppColors.primaryContainer,  // Lighter container color
  onPrimaryContainer: AppColors.onPrimaryContainer,  // Text/icons on primary container

  secondary: AppColors.secondary,  // Secondary color for other UI elements
  onSecondary: AppColors.onSecondary,  // Text/icons on secondary color
  secondaryContainer: AppColors.secondaryContainer,  // Lighter secondary container color
  onSecondaryContainer: AppColors.onSecondaryContainer,  // Text/icons on secondary container

  tertiary: AppColors.tertiary,  // Tertiary color, for accents and highlights
  onTertiary: AppColors.onTertiary,  // Text/icons on tertiary color
  tertiaryContainer: AppColors.tertiaryContainer,  // Tertiary container color
  onTertiaryContainer: AppColors.onTertiaryContainer,  // Text/icons on tertiary container

  error: AppColors.error,  // Error color
  onError: AppColors.onError,  // Text/icons on error color

  surface: AppColors.surface,  // Background color for surfaces
  onSurface: AppColors.onSurface,  // Text/icons on surface
  surfaceDim: AppColors.surfaceDim,  // Dim surface color (lighter)
  surfaceBright: AppColors.surfaceBright,  // Brighter surface color
  surfaceContainerLowest: AppColors.surfaceContainerLowest,  // Lowest surface container color
  surfaceContainerLow: AppColors.surfaceContainerLow,  // Low surface container color
  surfaceContainer: AppColors.surfaceContainer,  // Default surface container color
  surfaceContainerHigh: AppColors.surfaceContainerHigh,  // High surface container color
  surfaceContainerHighest: AppColors.surfaceContainerHighest,  // Highest surface container color
  onSurfaceVariant: AppColors.onSurfaceVariant,  // Text/icons on surface variants
  outline: AppColors.outline,  // Outline color
  outlineVariant: AppColors.outlineVariant,  // Outline variant color

  shadow: AppColors.shadow,  // Shadow color with slight transparency
  scrim: AppColors.scrim,  // Scrim color for darkened overlays

  inverseSurface: AppColors.inverseSurface,  // Inverse surface (for dark mode)
  onInverseSurface: AppColors.onInverseSurface,  // Inverse surface text/icons
  inversePrimary: AppColors.inversePrimary,  // Inverse primary color (for dark mode)
  surfaceTint: AppColors.surfaceTint,  // Surface tint color for certain elements
);
