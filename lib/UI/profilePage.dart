part of 'ui.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defautlMargin),
        height: 250,
        margin: EdgeInsets.only(bottom: 5),
        width: double.infinity,
        color: kBGColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 110,
              margin: EdgeInsets.only(bottom: 16),
              width: 110,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/border.png"))),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/32/92/82/32928237ffd0f475f33dcbaeee82cddc.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Text(
              "Sumanda",
              style: kFontStyle2.copyWith(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            Text(
              "mandamanda49@gmail.com",
              style: kFontStyle2.copyWith(color: kGreyAColor, fontSize: 11),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBGColor,
      body: ListView(
        children: [
          Column(
            children: [
              // Header
              header(),
              Divider(),
              BodyContent(
                title: "Go Premium",
                icon: FontAwesomeIcons.crown,
                color: Colors.yellow,
              ),
              BodyContent(
                  title: "Share",
                  icon: FontAwesomeIcons.share,
                  color: Colors.blueAccent),
              BodyContent(
                title: "App Version 1.2.11",
                icon: FontAwesomeIcons.android,
                color: Colors.greenAccent,
              ),
              BodyContent(
                  title: "Rate Us",
                  icon: FontAwesomeIcons.solidStar,
                  color: Colors.yellowAccent),
              BodyContent(
                  title: "FAQ",
                  icon: FontAwesomeIcons.question,
                  color: Colors.redAccent),
              BodyContent(
                  title: "Feedback",
                  icon: FontAwesomeIcons.comment,
                  color: Colors.white),
              BodyContent(
                  title: "Privacy Policy",
                  icon: FontAwesomeIcons.shieldAlt,
                  color: Colors.orangeAccent),
            ],
          ),
        ],
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  BodyContent({
    this.title,
    this.icon,
    this.color,
  });
  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
      ),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20), color: kBlueButtonColor),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: defautlMargin, right: 15),
            child: Icon(
              icon,
              size: 15,
              color: color,
            ),
          ),
          Text(
            title,
            style: kFontStyle4.copyWith(
                color: kLightOrangeColor, fontWeight: FontWeight.w100),
          ),
          // Spacer(),
          // SizedBox(
          //   height: 40,
          //   width: 40,
          //   child: Image.asset(
          //     images,
          //     color: kLightOrangeColor,
          //     fit: BoxFit.contain,
          //   ),
          // )
        ],
      ),
    );
  }
}
