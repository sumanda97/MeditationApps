part of 'ui.dart';

class SleepPage extends StatefulWidget {
  @override
  _SleepPageState createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
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
            color:
                _selectedIndex == index ? kBlueButtonColor : Color(0xFF586894),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            _icon[index],
            size: 25.0,
            color:
                _selectedIndex == index ? Color(0xFFE6E7F2) : Color(0xFFE6E7F2),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/STop.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sleep Stories",
                      style: kFontStyle1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Soothing bedtime stories to help you fall into a deep and natural sleep",
                      style: kFontStyle2.copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _icon
                          .asMap()
                          .entries
                          .map(
                            (MapEntry map) => _buildIcons(map.key),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CourselWidget(),
              SizedBox(
                height: 20,
              ),
              CostumGrid(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CourselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
          image: DecorationImage(
              image: CachedNetworkImageProvider(
                  "https://i.pinimg.com/originals/06/c2/f7/06c2f79f7fa29417a4b133ba845e4c6b.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0XFFE6E7F2)),
                child: Icon(
                  Icons.lock,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          Text("The Ocean Moon",
              style: GoogleFonts.ebGaramond(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFE7BF),
                  letterSpacing: 1.0)),
          Text(
            "Non-stop 8- hour mixes of our most popular sleep audio",
            style: kFontStyle3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "START",
                  style: kFontStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
