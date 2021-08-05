part of 'ui.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/sign');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/welcome1.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WELCOME",
                      style: kFontStyle1.copyWith(
                          fontSize: 40, letterSpacing: 5.0),
                    ),
                  ],
                ),
                Text(
                  "To Silent Moon",
                  style: kFontStyle1.copyWith(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 15, left: defautlMargin, right: defautlMargin),
                  child: Text(
                    "Explore the app, Find some peace of mind to prepare for meditation.",
                    style: kFontStyle3.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
