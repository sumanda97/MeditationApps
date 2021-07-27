import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditationapp/Theme/theme.dart';
import 'package:meditationapp/models/listRecommendation.dart';

class WidgetRecommendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Recomended for you",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3F414E),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 300,
          child: ListView.builder(
              itemCount: recommendation.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                RecommendationList recommendationList = recommendation[index];
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        recommendationList.imageUrl),
                                    fit: BoxFit.cover))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          recommendationList.name,
                          style: kFontStyle3.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          recommendationList.duration,
                          style: kFontStyle3.copyWith(
                              color: Color(0xFFA1A4B2),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1.0),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
