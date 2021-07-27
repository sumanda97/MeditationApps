import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final Function onTap;

  CardWidget(
      {@required this.image,
      @required this.title,
      @required this.subtitle,
      @required this.description,
      @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kFontStyle1.copyWith(color: kBGColor),
              ),
              Text(
                subtitle,
                style: kFontStyle1.copyWith(
                    fontSize: 18, letterSpacing: 1.0, color: Colors.black87),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(description,
                      style: kFontStyle3.copyWith(color: kBGColor)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: onTap,
                      child: Text(
                        "START",
                        style: kFontStyle3.copyWith(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
