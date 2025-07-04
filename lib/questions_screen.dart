import 'package:flutter/material.dart';
import 'package:quiz_app/result_screen.dart';
import 'answer_button.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  late int currentQuestionIndex = 0;
  late final List<String> selectedAnswers;

  @override
  void initState() {
    currentQuestionIndex = 0;
    selectedAnswers = [];
    // debugPrint('[DEBUG] $currentQuestionIndex');
    super.initState();
  }

  void answerQuestion(String answer) {
  setState(() {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ResultScreen(chosenAnswers: selectedAnswers,),
        ),
      );
    } else {
      currentQuestionIndex++;
      // debugPrint("[DEBUG] $currentQuestionIndex");
    }
  }
  );
}

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.shuffledAnswers.map((answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () => answerQuestion(answer),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
