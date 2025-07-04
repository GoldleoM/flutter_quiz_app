# 📝 Flutter Quiz App

A simple multiple-choice quiz app built with Flutter.  
It tests basic Flutter concepts using a series of questions, tracks your answers, and shows a results summary at the end.

---

## ✨ Features
- Multiple-choice quiz with shuffled answers
- Tracks selected answers per question
- Displays result summary with:
  - Number of correct answers
  - Detailed review of each question
- Restart quiz option
- Clean & responsive UI with gradient backgrounds and custom buttons
- Simple state management using `setState`

---

## 📂 App Structure
lib/
│
├── data/
│ └── questions.dart # Quiz questions and answers
│
├── models/
│ └── quiz_question.dart # QuizQuestion model with shuffle logic
│
├── screens/
│ ├── start_screen.dart # Start quiz screen
│ ├── questions_screen.dart # Quiz questions screen
│ └── result_screen.dart # Quiz result screen
│
├── widgets/
│ ├── answer_button.dart # Custom answer button
│ └── questions_summary.dart # Result summary widget
│
├── quiz.dart # Main quiz widget (routes between screens)
└── main.dart # Entry point

yaml
Copy
Edit

---

## 🛠️ Tech Stack
| Feature             | Technology         |
|---------------------|--------------------|
| Framework           | Flutter 3.x        |
| Language            | Dart 3.x           |
| State Management    | setState           |
| Fonts               | Google Fonts (Lato)|
| UI Widgets          | StatelessWidget & StatefulWidget |
| IDE                 | VS Code / Android Studio |

---

## 🚀 Getting Started

### ✅ Prerequisites
- Flutter SDK installed → [Install Flutter](https://flutter.dev/docs/get-started/install)

### ✅ Setup
1. Clone the repository:

git clone https://github.com/GoldleoM/quiz_app.git
cd quiz_app

2. Get dependencies:
flutter pub get

3. Run the app:
flutter run

💡 Features in Detail:
Questions & Answers: Loaded from data/questions.dart

Answer Shuffling: Answers shuffled each time via shuffledAnswers getter.

Results Summary: Shows per-question results (correct/incorrect) with styling.

State Management: All quiz progress handled with setState.

Restart Quiz: Restart functionality via a button that resets the app state.
