part of 'ui.dart';

class RelaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: ListView(
        children: [
          Column(
            children: [
              CostumGridCard(),
            ],
          )
        ],
      ),
    );
  }
}
