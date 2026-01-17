import 'package:flutter/material.dart';
import 'package:quizapp/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> answers;
  QuestionItemModel({required this.title, required this.answers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: "What is your favorite sport?",
    answers: [
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
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite color?",
    answers: [
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
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite animal?",
    answers: [
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
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite bird?",
    answers: [
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
    ],
  ),
];
