import 'package:flutter/material.dart';
import 'package:flutter_template_for_hackathon/common/theme/app_theme.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.buttonStart,
    required this.buttonEnd,
    required this.onPressed,
  }) : super(key: key);

  final String icon;
  final String title;
  final Color buttonStart;
  final Color buttonEnd;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 94),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34),
              topRight: Radius.circular(6.8),
              bottomRight: Radius.circular(34),
              bottomLeft: Radius.circular(6.8),
            ),
            gradient: LinearGradient(
              begin: FractionalOffset.centerLeft,
              end: FractionalOffset.centerRight,
              colors: <Color>[
                AppTheme.buttonStart,
                AppTheme.buttonEnd,
              ],
              stops: [0.0, 1.0],
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            onPressed: onPressed,
            child: SizedBox(
              height: 68,
              width: 202,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image.asset('assets/start.png'),
                  Image.asset(icon),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28.9,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
