import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';

class RecordCellViewData {
  RecordCellViewData({
    required this.icon,
    required this.subIcon,
    required this.name,
    required this.headline,
    required this.date,
});

  final IconData icon;
  final IconData subIcon;
  final String name;
  final String headline;
  final String date;
}

class RecordCell extends StatelessWidget {
  const RecordCell({
    Key? key,
    required this.viewData,
    required this.onTap,
  }) : super(key: key);

  final RecordCellViewData viewData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: AppTheme.shade700Color,
        radius: 20,
        child: Icon(
          viewData.icon,
          color: AppTheme.appColor,
        ),
      ),
      title: Row(
        children: [
          Text(
            viewData.headline,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor,
            ),
          ),
          Icon(
            viewData.subIcon,
            color: AppTheme.textColor,
          ),
        ],
      ),
      subtitle: Text(
        viewData.date,
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
            viewData.name,
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
