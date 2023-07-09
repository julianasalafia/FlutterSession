import 'package:flutter/material.dart';
import 'package:restaurant_picker/constants.dart';

import '../alert_widget.dart';

const String title = 'TOTAL AMOUNT';
const String buttonText = 'calculate';
const String hintText = '\$100.00';

const List<String> percentages = ['5%', '10%', '15%', '20%'];

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final controller = TextEditingController();
  final List<bool> _selection = [true, false, false, false];
  String? tip;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150.0, bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                          hintText: hintText,
                          hintStyle: kHintTextStyle,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kTextColor)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kText2Color)),
                        ),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
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
                        isSelected: _selection,
                        onPressed: updateSelection,
                        children: createTextWidgets(percentages),
                      ),
                    ),
                  ],
                ),
              ),
              if (tip != null)
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    tip!,
                    style: kColorizeTextStyle,
                  ),
                ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(0.08),
                    spreadRadius: 2,
                    blurRadius: 3.0,
                    offset: const Offset(0, 0),
                  ),
                ]),
                child: TextButton(
                  onPressed: calculateTip,
                  style: TextButton.styleFrom(
                      side: const BorderSide(color: kTextColor, width: 1.0)),
                  child: Text(
                    buttonText,
                    style: kColorizeTextStyle,
                  ),
                ),
              ),
            ],
          ),
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
    try {
      final totalAmount = double.parse(controller.text);
      final selectedIndex = _selection.indexWhere((element) => element);
      final tipPercentage = [0.05, 0.1, 0.15, 0.2][selectedIndex];

      final tipTotal = (totalAmount * tipPercentage).toStringAsFixed(2);

      setState(() {
        tip = '\$$tipTotal';
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: AlertWidget(),
          );
        },
      );
    }
  }

  List<Text> createTextWidgets(List<String> percentages) {
    List<Text> textWidgets = [];
    for (String percentage in percentages) {
      textWidgets.add(Text(percentage));
    }
    return textWidgets;
  }
}
