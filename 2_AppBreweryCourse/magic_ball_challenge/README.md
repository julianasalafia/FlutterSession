# Magic Ball 

![magic ball](https://github.com/julianasalafia/FlutterSession/blob/main/Screenshots_Projects/magic_ball.png)

This app displays a magic 8-ball that generates a random answer when tapped. The `BallPage` class extends `StatelessWidget` and overrides the `build` method to create a `MaterialApp` with a `Scaffold` that has a blue background, an `AppBar` with the title "Ask me anything", and a `Ball` widget as the body. The `Ball` class extends `StatefulWidget` and overrides the `createState` method to return an instance of `_BallState`. The `_BallState` class has a `randomNumber` field initialized to 0 and a `changeRandomNumber` method that sets the state with a new random number between 1 and 5. The `build` method creates a centered `Padding` widget with a `TextButton` child that calls the `changeRandomNumber` method when pressed and displays an image of a magic 8-ball with the current random number.
