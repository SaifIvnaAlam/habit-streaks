import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class UpComingEventContainer extends StatelessWidget {
  const UpComingEventContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming Events', style: AppTextStyles.title),
          SizedBox(height: 10.0),
          // Example event list (could be dynamic)
          ListTile(
            title: Text('Meeting with Alex', style: AppTextStyles.bodyText),
            subtitle: Text(
              'Tomorrow, 2:00 PM',
              style: AppTextStyles.captionText,
            ),
          ),
          ListTile(
            title: Text('Dentist Appointment', style: AppTextStyles.bodyText),
            subtitle: Text(
              'March 22, 9:30 AM',
              style: AppTextStyles.captionText,
            ),
          ),
        ],
      ),
    );
  }
}
