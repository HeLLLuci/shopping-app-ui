import 'package:flutter/material.dart';
import 'package:shopping_app/config.dart';

class BlueButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const BlueButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? onTap : (){},
      child: Container(
        height: 56,
        color: SysColors.mainColor,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}
