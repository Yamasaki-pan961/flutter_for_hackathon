import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';

class RecordCell extends StatelessWidget {
  const RecordCell({
    Key? key,
    required this.icon,
    required this.time,
    required this.distance,
    required this.date,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String time;
  final String distance;
  final String date;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: AppTheme.shade700Color,
        radius: 20,
        child: Icon(
          icon,
          color: AppTheme.appColor,
        ),
      ),
      title: Row(
        children: [
          Text(
            distance,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor,
            ),
          ),
          Icon(
            icon,
            color: AppTheme.textColor,
          ),
        ],
      ),
      subtitle: Text(
        date,
        style: TextStyle(
          color: AppTheme.grey,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              color: AppTheme.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          AppSpaces.horizontal_4,
          Icon(
            Icons.arrow_forward_ios,
            color: AppTheme.grey,
            size: 20,
          ),
        ],
      ),
    );
  }
}
