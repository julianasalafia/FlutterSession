import 'package:flutter/material.dart';
import 'package:restaurant_picker/constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final controller = TextEditingController();
  final List<bool> _selection = [true, false, false];
  String? tip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (tip != null)
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  tip!,
                  style: kColorizeTextStyle,
                ),
              ),
            Text(
              'Total Amount',
              style: kColorizeTextStyle,
            ),
            SizedBox(
              width: 70.0,
              child: TextField(
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: '\$100.00'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ToggleButtons(
                children: [
                  Text('10%', style: kTextFontColor),
                  Text('15%', style: kTextFontColor),
                  Text('20%', style: kTextFontColor),
                ],
                isSelected: _selection,
                onPressed: updateSelection,
              ),
            ),
            TextButton(
              onPressed: calculateTip,
              style: TextButton.styleFrom(
                  side: const BorderSide(color: kTextColor, width: 1.0)),
              child: Text(
                'calculate tip',
                style: kColorizeTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateSelection(int selectedIndex) {
    setState(() {
      for (int i = 0; i < _selection.length; i++) {
        _selection[i] = selectedIndex == i;
      }
    });
  }

  void calculateTip() {
    final totalAmount = double.parse(controller.text);
    final selectedIndex = _selection.indexWhere((element) => element);
    final tipPercentage = [0.1, 0.15, 0.2][selectedIndex];

    final tipTotal = (totalAmount * tipPercentage).toStringAsFixed(2);

    setState(() {
      tip = '\$$tipTotal';
    });
  }
}
