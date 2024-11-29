import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final void Function()? onTap;
  const MyButton(
      {super.key,
      required this.title,
      this.color = Colors.red,
      this.onTap,
      this.textColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    );
  }
}
