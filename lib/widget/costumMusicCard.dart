import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';

import 'package:meditationapp/models/listMusic.dart';

class CostumGridCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          physics: ScrollPhysics(),
          itemCount: music.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, int index) {
            final MusicList musicList = music[index];
            return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: kBGColor),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        musicList.imageUrl),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  musicList.name,
                                  style: kFontStyle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      letterSpacing: 1.0),
                                ),
                                Text(
                                  musicList.duration,
                                  style: kFontStyle3.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
          }),
    );
  }
}
