part of 'ui.dart';

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  // ICON SELCETTION INDEX Tab Bar Header
  int _selectedIndex = 0;
  List<IconData> _icon = [
    Icons.sort,
    Icons.favorite_border,
    Icons.sentiment_very_dissatisfied,
    Icons.bedtime,
    Icons.child_care,
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? kBlueButtonColor : kGreyAColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            _icon[index],
            size: 25.0,
            color: _selectedIndex == index ? kWhiteColor : kWhiteColor,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget navigationIcon() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _icon
            .asMap()
            .entries
            .map(
              (MapEntry map) => _buildIcons(map.key),
            )
            .toList(),
      );
    }

    Widget header() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defautlMargin, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Meditate",
              style: kFontStyle1.copyWith(
                  color: Colors.black, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
              style: kFontStyle2.copyWith(fontSize: 16, color: kGreyAColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    Widget courselCard() {
      return Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defautlMargin, vertical: 29),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage("assets/SCourse2.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defautlMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily Calm",
                      style: kFontStyle3.copyWith(color: kBlackColor),
                    ),
                    Text(
                      "APR 30 . PAUSE PRACTICE",
                      style: kFontStyle3.copyWith(
                          color: kGreyAColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kBlackColor),
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                  color: kWhiteColor,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget stagGridView() {
      return StaggeredGridView.countBuilder(
          itemCount: meditate.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          crossAxisCount: 4,
          itemBuilder: (context, index) {
            return PlaceContainer(
              index: index,
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(2, index.isEven ? 3 : 2);
          });
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header(),
                navigationIcon(),
                courselCard(),
                stagGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
