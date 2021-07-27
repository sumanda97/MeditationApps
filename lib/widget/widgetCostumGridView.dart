import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/Theme/theme.dart';
import 'package:meditationapp/UI/uiDetails.dart/uidetails.dart';

import 'package:meditationapp/models/listMusic.dart';

class CostumGrid extends StatelessWidget {
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
          itemCount: musics.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, int index) {
            final MusicList musicList = musics[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => MusicDetails(
                          musicList: musicList,
                        )),
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  child: Hero(
                    tag: musicList.imageUrl,
                    child: ClipRect(
                      child: Image(
                        image: CachedNetworkImageProvider(musicList.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  footer: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          musicList.name,
                          style: kFontStyle1.copyWith(
                              fontSize: 18, letterSpacing: 1.0),
                        ),
                        Text(
                          musicList.duration,
                          style: kFontStyle3.copyWith(
                              fontSize: 10, letterSpacing: 1.0),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(12),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
