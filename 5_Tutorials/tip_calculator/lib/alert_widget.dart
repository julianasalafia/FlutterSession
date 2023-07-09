import 'package:flutter/material.dart';
import 'constants.dart';

const title = 'WRONG!';
const description = 'PROVIDE A VALID NUMBER';
const button = '>> OK!';

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.red)),
      title: Text(
        title,
        style: kAlertDialogTextStyle,
      ),
      content: Text(
        description,
        style: kAlertDialogTextStyle,
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            button,
            style: kAlertDialogTextStyle,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
