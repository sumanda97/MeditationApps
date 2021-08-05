import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';
import 'package:meditationapp/models/listMeditate.dart';

class PlaceContainer extends StatelessWidget {
  final int index;

  PlaceContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              meditate[index].imgPath,
            ),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 35,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: meditate[index].color,
            ),
            child: Center(
              child: Text(
                meditate[index].name,
                style: kFontStyle2.copyWith(
                    color: kWhiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    letterSpacing: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
