import 'package:flutter/material.dart';
import 'package:quizapp/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          child: Text(
            questionItem.title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Colors.black),
          ),
          padding: EdgeInsets.only(top: 16, bottom: 0.6),
        ),
        Text(
          "Answer and get points",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
