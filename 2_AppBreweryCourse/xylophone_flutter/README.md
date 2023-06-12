# Xylophone

![xylophone](https://github.com/julianasalafia/FlutterSession/blob/main/Screenshots_Projects/xylophone.png)

This app plays different sounds when the user taps on different colored buttons. The app uses the `audioplayers` package to play the sounds. The `XylophoneApp` class extends `StatelessWidget` and contains methods to build the colored buttons, play the sounds, and create a map of colors. The `buildKey` method creates an `Expanded` widget with a `TextButton` child that plays a sound when pressed. The `playSound` method uses an instance of `AudioPlayer` to play a sound from an asset source. The `getColorMap` method returns a map of color names to their corresponding `Color` values. The `build` method creates a `MaterialApp` with a `Scaffold` that has a black background and a `SafeArea` containing a `Column` of colored buttons created using the `buildKey` method.
