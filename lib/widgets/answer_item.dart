import 'package:flutter/material.dart';

class AnswerItem extends StatelessWidget {
  final Map<String, dynamic> item;
  const AnswerItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: item["onPressed"],
          child: Text(item["title"]),
        ),
      ),
    );
  }
}
