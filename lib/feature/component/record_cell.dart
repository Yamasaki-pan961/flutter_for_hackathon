import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_spaces.dart';

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
        backgroundColor: Colors.grey.shade700,
        radius: 20,
        child: Icon(
          icon,
          color: Colors.greenAccent,
        ),
      ),
      title: Row(
        children: [
          Text(
            distance,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
      subtitle: Text(
        date,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          AppSpaces.horizontal_4,
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
    );
  }
}
