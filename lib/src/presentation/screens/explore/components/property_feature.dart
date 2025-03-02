import 'package:flutter/material.dart';

class PropertyFeature extends StatelessWidget {
  final IconData icon;
  final String value;

  const PropertyFeature({super.key, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(value, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
