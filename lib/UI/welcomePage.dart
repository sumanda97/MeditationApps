part of 'ui.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/SBackground.png"),
                fit: BoxFit.cover)),
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Welcome To Maleep",
              style: kFontStyle1.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.",
              style: kFontStyle2.copyWith(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/SFrame.png"),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 63,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "GET STARTED",
                    style: kFontStyle3,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: kBlueButtonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
