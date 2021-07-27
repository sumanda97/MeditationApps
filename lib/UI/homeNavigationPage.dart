part of 'ui.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  // ALL PAGES
  final HomePageScreen _homePageScreen = HomePageScreen();
  final SleepPage _sleepPage = SleepPage();
  final MeditationPage _meditationPage = MeditationPage();
  final RelaxPage _relaxPage = RelaxPage();
  final ProfilePage _profilePage = ProfilePage();

  Widget _showPage = new HomePageScreen();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePageScreen;
        break;
      case 1:
        return _sleepPage;
        break;
      case 2:
        return _meditationPage;
        break;
      case 3:
        return _relaxPage;
        break;
      case 4:
        return _profilePage;
        break;
      default:
        return new Container(
          child: Text("Page Not Found"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF03174D),
        backgroundColor: Color(0xFF03174D),
        buttonBackgroundColor: kBlueButtonColor,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.slowMiddle,
        index: pageIndex,
        items: [
          Icon(
            MdiIcons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.moonWaningCrescent,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.meditation,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.music,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.account,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (int tapppedIndex) {
          setState(() {
            _showPage = _pageChooser(tapppedIndex);
          });
        },
      ),
      body: _showPage,
    );
  }
}
