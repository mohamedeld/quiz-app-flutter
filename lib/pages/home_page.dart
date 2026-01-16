import 'package:flutter/material.dart';
import 'package:quizapp/models/answer_item_model.dart';
import 'package:quizapp/widgets/answer_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          children: [
            Padding(
              child: Text(
                "What is your favourite sport?",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ),
            Column(
              children: firstAnswers
                  .map((item) => AnswerItem(item: item))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
