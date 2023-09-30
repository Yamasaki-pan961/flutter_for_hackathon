import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';

class DetailListTile extends StatelessWidget {
  const DetailListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.shade700Color,
            radius: 30,
            child: Icon(
              icon,
              color: AppTheme.appColor,
              size: 35,
            ),
          ),
          AppSpaces.horizontal_16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: AppTheme.textColor,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
