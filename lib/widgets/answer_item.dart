import 'package:flutter/material.dart';
import 'package:quizapp/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel item;
  final VoidCallback changeQuestionIndexCb;
  final bool isChosen;
  const AnswerItem({
    super.key,
    required this.item,
    required this.changeQuestionIndexCb,
    required this.isChosen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        item.onPressed();
        changeQuestionIndexCb();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(8.0),
              color: isChosen ? Colors.green : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                    color: isChosen ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isChosen ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     item.onPressed();
          //     changeQuestionIndexCb();
          //   },
          //   child: Text(item.title),
          // ),
        ),
      ),
    );
  }
}
