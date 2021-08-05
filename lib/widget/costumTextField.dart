import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';

class CostumTextFormField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  CostumTextFormField(
      {@required this.hintText,
      this.obsecureText = false,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defautlMargin,
        right: defautlMargin,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obsecureText,
            controller: controller,
            decoration: InputDecoration(
              fillColor: Colors.grey,
              focusColor: Colors.grey,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: kBlueButtonColor)),
            ),
          ),
        ],
      ),
    );
  }
}
