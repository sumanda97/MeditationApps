import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';

class CostumTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;
  CostumTabBar({this.titles, this.onTap, this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 48),
            height: 1,
            color: kWhiteColor,
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(
                          left: defautlMargin, right: defautlMargin),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap(titles.indexOf(e));
                              }
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? kFontStyle4.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: kBlueButtonColor)
                                  : kFontStyle3,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles.indexOf(e) == selectedIndex)
                                    ? kBlueButtonColor
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
