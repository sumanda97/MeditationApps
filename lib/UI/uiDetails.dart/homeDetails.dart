part of 'uidetails.dart';

class HomeDetail extends StatefulWidget {
  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 288,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/SDetail1.png"),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defautlMargin),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          // NOTE
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGreyAColor),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 30, right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGreyAColor),
                    color: Color(0XFFE6E7F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGreyAColor),
                    color: Color(0XFFE6E7F2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(FontAwesomeIcons.download,
                      size: 25, color: Colors.grey),
                ),
              ),
            ],
          ),
          // TITLE
          Container(
            margin: EdgeInsets.only(
              top: 200,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ICON BUTTON
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Happy Morning",
                          style: kFontStyle3.copyWith(
                              fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "COURSE",
                          style: kFontStyle2.copyWith(
                              color: kGreyAColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Ease the mind into a restful night’s sleep with these deep, amblent tones.",
                          style: kFontStyle3.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFA1A4B2)),
                        ),
                      ),
                      // ICON LIST FAV
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                WidgetSpan(
                                  child: Row(
                                    children: [
                                      Icon(
                                        MdiIcons.heart,
                                        size: 25,
                                        color: Colors.redAccent,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "24.234 Favorits",
                                        style: kFontStyle3.copyWith(
                                            fontSize: 14, color: kGreyAColor),
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
                                        size: 25,
                                        color: Colors.redAccent,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "34.234 Lestening",
                                        style: kFontStyle3.copyWith(
                                            fontSize: 14, color: kGreyAColor),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      // TABBAR
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text("Pick a Narattor",
                            style: kFontStyle4.copyWith(
                                color: kBlackColor, fontSize: 20)),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            CostumTabBar(
                              titles: ['Male Voice', 'Female Voice'],
                              selectedIndex: selectedIndex,
                              onTap: (index) {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Builder(builder: (_) {
                              String body = (selectedIndex == 0)
                                  ? 'Male Voice'
                                  : 'Female Voice';
                              return Center(
                                child: Text(
                                  body,
                                  style: kFontStyle3,
                                ),
                              );
                            })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Stack(
              children: [
                backgroundImage(),
                content(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
