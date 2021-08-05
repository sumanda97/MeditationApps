part of 'ui.dart';

class SignInSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Frame.png"), fit: BoxFit.fill)),
      );
    }

    Widget content() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defautlMargin),
        child: Column(
          children: [
            Text(
              "We are what we do",
              style: kFontStyle1.copyWith(
                  color: kBlackColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 30),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Thousand of people are usign silent moon\nfor smalls meditation",
              style: kFontStyle4.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget signUp() {
      return CostumButton(
          title: "SIGN UP",
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          width: double.infinity,
          margin: EdgeInsets.only(top: 50, bottom: 20, left: 25, right: 25));
    }

    Widget termButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/signin');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have Account ",
                style: kFontStyle3.copyWith(
                    color: kGreyAColor,
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    decorationColor: kBlueButtonColor),
              ),
              Text(
                "Sign In",
                style: kFontStyle3.copyWith(
                    fontSize: 17,
                    color: kBlueButtonColor,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                header(),
                content(),
                signUp(),
                termButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
