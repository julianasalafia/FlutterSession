# Dicee

![Dicee](https://github.com/julianasalafia/FlutterSession/blob/main/Screenshots_Projects/dicee.png)

This code displays two dice that generate random numbers when tapped. The `main` function creates a `MaterialApp` with a `Scaffold` that has a red background, an `AppBar` with the title "Dice", and a `DicePage` widget as the body. The `DicePage` class extends `StatefulWidget` and overrides the `createState` method to return an instance of `_DicePageState`. The `_DicePageState` class has two fields, `leftDiceNumber` and `rightDiceNumber`, both initialized to 1, and a `changeDiceFace` method that sets the state with new random numbers between 1 and 6 for both dice. The `build` method creates a centered `Row` with two `Expanded` children, each containing a `TextButton` that calls the `changeDiceFace` method when pressed and displays an image of a die with the current number.
