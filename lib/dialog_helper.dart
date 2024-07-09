import 'package:flutter/cupertino.dart';

class DialogHelper {
  static showAlert({
    required BuildContext context,
    required String message,
  }) {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        content: Text(
          message,
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: false,
            onPressed: () {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pop();
            },
            child: const Text(
              "OK",
            ),
          )
        ],
      ),
    );
  }
}
