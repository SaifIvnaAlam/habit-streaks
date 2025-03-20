import 'package:flutter/material.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class MoodTrackerContainer extends StatelessWidget {
  const MoodTrackerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('How are you feeling today?', style: AppTextStyles.title),
          SizedBox(height: 10.0),
          // Mood tracker (slider or icons for selection)
          Slider(
            value: 50.0, // Example value
            min: 0.0,
            max: 100.0,
            onChanged: (value) {},
            activeColor: AppColors.primary,
            inactiveColor: AppColors.surface,
          ),
        ],
      ),
    );
  }
}
