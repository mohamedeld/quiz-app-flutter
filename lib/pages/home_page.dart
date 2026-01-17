import 'package:flutter/material.dart';
import 'package:quizapp/models/answer_item_model.dart';
import 'package:quizapp/models/question_item_model.dart';
import 'package:quizapp/widgets/answer_item.dart';
import 'package:quizapp/widgets/question_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int totalScore = 0;
  int? answerIndex;
  bool showScore = false;
  void changeQuestionIndex() {
    setState(() {
      totalScore += 10;
      answerIndex = -1;
    });
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex += 1;
      } else {
        showScore = true;
      }
    });
  }

  void selectAnswerIndex(int num) {
    setState(() {
      answerIndex = num;
    });
  }

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      showScore = false;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Center(
            child: !showScore
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionItem(questionItem: questions[questionIndex]),
                      Column(
                        children: List.generate(
                          questions[questionIndex].answers.length,
                          (index) => AnswerItem(
                            item: questions[questionIndex].answers[index],
                            isChosen: answerIndex == index,
                            changeQuestionIndexCb: () {
                              selectAnswerIndex(index);
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: changeQuestionIndex,
                          child: const Text("Next"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Your score is $totalScore"),
                      TextButton(onPressed: resetQuiz, child: Text("Reset")),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
