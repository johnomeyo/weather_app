import 'package:flutter/material.dart';

class MyDateTimeWidget extends StatelessWidget {
  const MyDateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dayOfWeek = _getDayOfWeek(now.weekday);
    String date = _formatDate(now);

    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$dayOfWeek  |",
          style: const TextStyle(fontSize: 16, color: Colors.white,letterSpacing: 2),
        ),
        Text(
          "   $date",
          style: const TextStyle(fontSize: 16, color: Colors.white,letterSpacing: 2),
        ),
      ],
    );
  }

  String _getDayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
