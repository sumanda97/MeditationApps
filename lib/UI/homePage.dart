part of 'ui.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/SLogoapps.png"),
                            fit: BoxFit.contain)),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning, Manda",
                style: kFontStyle3.copyWith(
                    color: Colors.black, letterSpacing: 1.0),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We Wish you have a good day",
                style: kFontStyle3.copyWith(
                    color: Colors.grey[700],
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        // Coursel Grid Crad Grid Widget
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CardWidget(
                image: "assets/SCoursel1.png",
                title: "Basics",
                subtitle: "Course",
                description: "3-10 MIN",
                onTap: () {},
              ),
              SizedBox(
                width: 20,
              ),
              CardWidget(
                image: "assets/SCoursel2.png",
                title: "Relaxation",
                subtitle: "Music",
                description: "3-10 MIN",
                onTap: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CourselHeaderWidget(),
        SizedBox(height: 30),
        WidgetRecommendedList(),
      ],
    ));
  }
}

// Coursel Header
class CourselHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/SCourse3.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daily Thought",
                  style: kFontStyle3,
                ),
                Text(
                  "Meditation . 3-10 MIN",
                  style: kFontStyle3,
                )
              ],
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Icon(
                Icons.play_arrow_rounded,
                size: 40,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
