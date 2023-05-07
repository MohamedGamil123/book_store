import 'package:flutter/material.dart';

customAlertDialoge(BuildContext context,
    {required Widget content, List<Widget>? actions}) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Text("there where an error"),
          content: content,
          actions: actions,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        );
      });
}
