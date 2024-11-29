import 'package:flutter/material.dart';

Container oneFormField(String hintText, [TextEditingController? controller]) {
  return Container(
    alignment: Alignment.center,
    height: 58,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xff8E8E93), width: 1)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    ),
  );
}
