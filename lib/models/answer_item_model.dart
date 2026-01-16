import 'package:flutter/cupertino.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title, required this.onPressed});
}

List<AnswerItemModel> firstAnswers = [
  AnswerItemModel(
    title: "Football",
    onPressed: () {
      debugPrint("Football");
    },
  ),
  AnswerItemModel(
    title: "Volleyball",
    onPressed: () {
      debugPrint("Volleyball");
    },
  ),
  AnswerItemModel(
    title: "BasketBall",
    onPressed: () {
      debugPrint("BasketBall");
    },
  ),
];
