part of 'uidetails.dart';

class MusicDetails extends StatefulWidget {
  final MusicList musicList;
  MusicDetails({this.musicList});

  @override
  _MusicDetailsState createState() => _MusicDetailsState();
}

class _MusicDetailsState extends State<MusicDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF03174C),
        body: ListView(
          children: [
            Stack(
              children: [
                // HEADER IMAGE
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0),
                      ]),
                  // IMAGE URL HOTELS
                  child: Hero(
                      tag: widget.musicList.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                            image: CachedNetworkImageProvider(
                                widget.musicList.imageUrl),
                            fit: BoxFit.cover),
                      )),
                ),
                // BUTTON
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.favorite),
                              iconSize: 30,
                              color: Colors.white,
                              onPressed: () => Navigator.pop(context),
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.download),
                              iconSize: 25,
                              color: Colors.white,
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 250),
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xFF03174C),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.musicList.name,
                                    style: kFontStyle1.copyWith(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.musicList.duration,
                        style: kFontStyle3.copyWith(
                            fontSize: 15,
                            color: Colors.green[350],
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                        child: Text(
                          widget.musicList.description,
                          style: kFontStyle3.copyWith(
                            fontSize: 15,
                            color: Colors.green[350],
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 12,
                                            color: kGreyColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            widget.musicList.favorite
                                                    .toString() +
                                                " Favorites",
                                            style: kFontStyle3.copyWith(
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.headset,
                                            size: 12,
                                            color: kGreyColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            widget.musicList.listening
                                                    .toString() +
                                                " Listening",
                                            style: kFontStyle3.copyWith(
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          )),
                      Divider(
                        height: 5,
                        color: kGreyColor,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Related",
                        style: kFontStyle3.copyWith(
                            fontWeight: FontWeight.bold, letterSpacing: 1.0),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      RelatedPost(),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 80,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Play",
                                style: kFontStyle3,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  primary: kBlueButtonColor)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class RelatedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: musics.length,
              itemBuilder: (BuildContext context, int index) {
                MusicList musicList = musics[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => MusicDetails(
                              musicList: musicList,
                            )),
                  ),
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
                                        musicList.imageUrl),
                                    fit: BoxFit.cover))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          musicList.name,
                          style: kFontStyle3.copyWith(
                              fontWeight: FontWeight.bold, letterSpacing: 1.0),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          musicList.duration,
                          style: kFontStyle3.copyWith(
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
