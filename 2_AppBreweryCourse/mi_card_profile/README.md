# Mi Card

![Mi Card](https://github.com/julianasalafia/FlutterSession/blob/main/1_Screenshots/mi_card.png)

This app displays a profile page with a profile picture, name, job title, phone number, and email address. The `MyApp` class extends `StatelessWidget` and overrides the `build` method to create a `MaterialApp` with a `Scaffold` that has a teal background and a `SafeArea` containing a centered `Column`. The `Column` contains a `CircleAvatar` with a profile picture, two `Text` widgets for the name and job title, a `SizedBox` with a `Divider`, and two `Card` widgets for the phone number and email address. Each `Card` contains a `ListTile` with an icon and text. The text styles use custom fonts specified in the `pubspec.yaml` file.
