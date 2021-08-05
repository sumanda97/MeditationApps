part of 'ui.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    TextEditingController nameController = TextEditingController(text: "");

    void onChange(bool value) {
      setState(() {
        _isSelected = value;
        print("Bekerja");
      });
    }

    Widget popButton() {
      return Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: kGreyAColor),
              ),
              margin: EdgeInsets.only(top: 50, left: 20, bottom: 20),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: kBlackColor,
              ),
            ),
          ),
        ],
      );
    }

    // Widget facebookButton() {
    //   return InkWell(
    //     onTap: () {},
    //     child: Container(
    //         margin: EdgeInsets.only(
    //             top: 30, left: defautlMargin, right: defautlMargin),
    //         width: double.infinity,
    //         height: 55,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(38),
    //             color: Color(0xFF7583CA)),
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Image(
    //                 image: AssetImage("assets/facebook.png"),
    //                 height: 24,
    //                 width: 24,
    //               ),
    //               SizedBox(
    //                 width: 10,
    //               ),
    //               Text(
    //                 "COUNTINUE WITH FACEBOOK",
    //                 style: kFontStyle3,
    //               ),
    //             ],
    //           ),
    //         )),
    //   );
    // }

    Widget googleButton() {
      return InkWell(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(
                top: 20, bottom: 40, left: defautlMargin, right: defautlMargin),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              border: Border.all(color: Color(0xFFEBEAEC)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/google.png"),
                    fit: BoxFit.cover,
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "COUNTINUE WITH GOOGLE",
                    style: kFontStyle3.copyWith(color: kBlackColor),
                  ),
                ],
              ),
            )),
      );
    }

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            CostumTextFormField(
                hintText: "Full Name", controller: nameController),
            CostumTextFormField(
                hintText: "Email Address", controller: emailController),
            CostumTextFormField(
                hintText: "Password",
                controller: passwordController,
                obsecureText: true),
          ],
        ),
      );
    }

    Widget checklistBox() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defautlMargin),
        child: Row(
          children: [
            Checkbox(
                value: _isSelected,
                onChanged: (bool value) {
                  onChange(value);
                }),
            Text(
              "I Have Read ",
              style: kFontStyle3.copyWith(color: kBlackColor),
            ),
            Text(
              "Privacy Policy",
              style: kFontStyle3.copyWith(color: kBlueButtonColor),
            ),
          ],
        ),
      );
    }

    Widget gesstartButton() {
      return CostumButton(
          margin: EdgeInsets.only(
              top: 32, left: defautlMargin, right: defautlMargin),
          title: "Get Started",
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          });
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                popButton(),
                Text(
                  "Create Your Account",
                  style: kFontStyle4.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: kBlackColor),
                ),
                // facebookButton(),
                googleButton(),
                Text(
                  "OR LOG IN WITH EMAIL",
                  style: kFontStyle3.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kGreyAColor),
                ),
                inputSection(),
                checklistBox(),
                gesstartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
