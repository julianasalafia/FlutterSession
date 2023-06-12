
# Quizzler 

Screenshot 1 | Screenshot 2  | Screenshot 3
:-: | :-: | :-:
|![](https://github.com/julianasalafia/FlutterSession/blob/main/1_Screenshots/quizzler_1.png) |![](https://github.com/julianasalafia/FlutterSession/blob/main/1_Screenshots/quizzler_2.png) | ![](https://github.com/julianasalafia/FlutterSession/blob/main/1_Screenshots/quizzler_3.png)|

This app is a quiz game. The application imports the `Material` package from Flutter, a `QuizzBrain` class, and the `rflutter_alert` package. The `QuizzBrain` class is instantiated as `quizzBrain`. The main function runs the `Quizzler` widget, which is a `StatelessWidget`. The `build` method of the `Quizzler` widget returns a `MaterialApp` with a `Scaffold` that has a grey background color and a body that consists of a `SafeArea` containing a `QuizPage` widget. The `QuizPage` widget is a `StatefulWidget`, and its state is managed by the `_QuizPageState` class. This class has a method called `checkAnswer`, which takes in a boolean value representing the user's answer to the current question. This method checks if the user's answer is correct and updates the score accordingly. If the quiz is finished, an alert is shown to the user indicating that they have reached the end of the quiz. The build method of this class returns a `Column` with several children, including two buttons for answering "True" or "False" to the current question.
