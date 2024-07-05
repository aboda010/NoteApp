import 'package:flutter/material.dart';

import '../constent.dart';

class CustemBottom extends StatelessWidget {
  const CustemBottom({super.key, required this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
        width: double.infinity,
        height: 55,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
        ),
      ),
    );
  }
}
