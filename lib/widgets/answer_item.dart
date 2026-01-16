import 'package:flutter/material.dart';
import 'package:quizapp/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel item;
  const AnswerItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: item.onPressed,
          child: Text(item.title),
        ),
      ),
    );
  }
}
