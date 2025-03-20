import 'package:flutter/material.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class DailyTaskContainer extends StatelessWidget {
  const DailyTaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Today\'s Tasks', style: AppTextStyles.title),
          SizedBox(height: 10.0),
          ListTile(
            title: Text('Task 1', style: AppTextStyles.bodyText),
            trailing: Icon(
              Icons.check_box_outline_blank,
              color: AppColors.primary,
            ),
          ),
          ListTile(
            title: Text('Task 2', style: AppTextStyles.bodyText),
            trailing: Icon(
              Icons.check_box_outline_blank,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
