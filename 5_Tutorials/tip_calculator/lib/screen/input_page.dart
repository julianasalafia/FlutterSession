import 'package:flutter/material.dart';
import 'package:restaurant_picker/constants.dart';

const String title = 'TOTAL AMOUNT';
const String buttonText = 'calculate';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final controller = TextEditingController();
  final List<bool> _selection = [true, false, false, false];
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
              title,
              style: kColorizeTextStyle,
            ),
            SizedBox(
              width: 70.0,
              child: TextField(
                style: kColorizeTextStyle,
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: '\$100.00',
                  hintStyle: kHintTextStyle,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kTextColor)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kText2Color)),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ToggleButtons(
                borderColor: kTextColor,
                selectedBorderColor: kTextColor,
                selectedColor: Colors.black,
                hoverColor: kText2Color,
                fillColor: kTextColor,
                textStyle: kColorizeTextStyle,
                color: kTextColor,
                children: [
                  Text('5%'),
                  Text('10%'),
                  Text('15%'),
                  Text('20%'),
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
                buttonText,
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
    final tipPercentage = [0.05, 0.1, 0.15, 0.2][selectedIndex];

    final tipTotal = (totalAmount * tipPercentage).toStringAsFixed(2);

    setState(() {
      tip = '\$$tipTotal';
    });
  }
}
