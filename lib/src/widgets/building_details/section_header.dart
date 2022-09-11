import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget{
  const SectionHeader({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const Divider(color: Colors.grey),
        ]
    );
  }
}