import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';

class CostumButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  const CostumButton(
      {@required this.title,
      @required this.onPressed,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kBlueButtonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38))),
          onPressed: onPressed,
          child: Text(
            title,
            style: kFontStyle1.copyWith(fontSize: 18),
          )),
    );
  }
}
