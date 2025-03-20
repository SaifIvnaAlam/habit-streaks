import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/features/home/presentation/components/quick_actions.dart';
import 'package:habitstreaks/src/features/home/presentation/components/section_card.dart';
import 'package:habitstreaks/src/features/profile/presentation/profile_page.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Text('Dashboard', style: AppTextStyles.title.copyWith(fontSize: 30)),
        actions: [
          GestureDetector(
            onTap: () => context.pushNamed(ProfilePage.route),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.onPrimaryContainer,
              child: Icon(Icons.person, color: AppColors.primary),
          ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            buildQuickActions(),
            const SizedBox(height: 20),
            buildSectionCard(
              title: 'Today’s Tasks',
              icon: Icons.task_alt,
              child: _buildTaskList(),
            ),
            const SizedBox(height: 20),
            buildSectionCard(
              title: 'How are you feeling today?',
              icon: Icons.emoji_emotions,
              child: _buildMoodSelector(),
            ),
            const SizedBox(height: 20),
            buildSectionCard(
              title: 'Upcoming Events',
              icon: Icons.event,
              child: _buildEventList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildCustomNavBar(),
    );
  }

  // ✅ Animated Task List
  Widget _buildTaskList() {
    return Column(
      children: [
        _buildTaskItem('Morning Workout'),
        _buildTaskItem('Read 10 Pages'),
        _buildTaskItem('Check Emails'),
      ],
    );
  }

  Widget _buildTaskItem(String taskName) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.check_circle_outline, color: Colors.white),
      title: Text(taskName, style: AppTextStyles.bodyText),
      onTap: () {},
    );
  }

  // 🟡 Mood Tracker with Clickable Emojis
  Widget _buildMoodSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMoodIcon(Icons.sentiment_very_satisfied, 'Great'),
        _buildMoodIcon(Icons.sentiment_satisfied, 'Good'),
        _buildMoodIcon(Icons.sentiment_neutral, 'Okay'),
        _buildMoodIcon(Icons.sentiment_dissatisfied, 'Bad'),
      ],
    );
  }

  Widget _buildMoodIcon(IconData icon, String mood) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(icon, size: 36, color: Colors.white),
          const SizedBox(height: 5),
          Text(mood, style: AppTextStyles.captionText),
        ],
      ),
    );
  }

  // 📅 Upcoming Events List
  Widget _buildEventList() {
    return Column(
      children: [
        _buildEventItem('Project Deadline', 'March 25, 3:00 PM'),
        _buildEventItem('Doctor Appointment', 'March 26, 10:30 AM'),
      ],
    );
  }

  Widget _buildEventItem(String eventName, String eventDate) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(eventName, style: AppTextStyles.bodyText),
      subtitle: Text(eventDate, style: AppTextStyles.captionText),
    );
  }

  // 🟠 Custom Bottom Navigation Bar
  Widget _buildCustomNavBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.onPrimaryContainer,
      unselectedItemColor: AppColors.onPrimaryContainer.withOpacity(0.6),
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: 'Habits'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
