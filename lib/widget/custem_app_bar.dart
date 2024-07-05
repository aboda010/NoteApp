import 'package:flutter/material.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({
    super.key, required this.text, required this.icon, this.onPressed
  });
final String text;
final IconData icon;
 final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color:const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(15)),
          height: 45,
          width: 45,
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 35,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
