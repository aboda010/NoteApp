
import 'package:flutter/material.dart';

class CustemBottomShowDialog extends StatelessWidget {
  const CustemBottomShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Card(
        clipBehavior: Clip.none,
        elevation: 25,
        child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(25)),
            child: const Center(
                child: Text(
              'No',
              style: TextStyle(color: Colors.blue),
            ))),
      ),
    );
  }
}
