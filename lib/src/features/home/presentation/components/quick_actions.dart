import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/features/calendar/presentation/calendar_page.dart';
import 'package:habitstreaks/src/features/todo/presentation/create_todo_page.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        GestureDetector(
          onTap: () => context.pushNamed(CreateTodoPage.route),
          child: _buildQuickAction(Icons.add_task, 'New Task'),
        ),
        GestureDetector(
            onTap: () => context.pushNamed(CalendarPage.route),
            child: _buildQuickAction(Icons.calendar_today, 'Calendar')),
      _buildQuickAction(Icons.show_chart, 'Progress'),
    ],
  );
  }
}




Widget _buildQuickAction(IconData icon, String label) {
  return Column(
    children: [

      Container(
        decoration: BoxDecoration(
          color: AppColors.inversePrimary.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(12),
        child: Icon(icon, color: AppColors.primary, size: 28),
      ),
    
      const SizedBox(height: 6),
      Text(label, style: AppTextStyles.captionText.copyWith(color: Colors.grey)),
    ],
  );
}
