part of "./splash.dart";

class SplashScreen extends StatelessWidget {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      type: "default",
      colorBackground: Utility.baseColor1,
      colorSafeArea: Utility.baseColor1,
      returnOnWillpop: false,
      content: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/bg_main.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 90, child: _screenCorousel()),
              Expanded(
                  flex: 10,
                  child: Center(
                    child: _screenDoots(),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget _screenCorousel() {
    return CarouselSlider.builder(
        carouselController: controller.corouselSplash,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            controller.indexCorousel.value = index;
            controller.indexCorousel.refresh();
          },
          autoPlay: true,
          viewportFraction: 1.0,
          initialPage: 1,
          height: MediaQuery.of(Get.context!).size.height,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Padding(
            padding: EdgeInsets.all(Utility.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Utility.large + Utility.large,
                ),
                Center(
                  child: TextLabel(
                    text: "EDUCATION",
                    weigh: FontWeight.bold,
                    size: Utility.large + Utility.large,
                    color: Utility.baseColor1,
                  ),
                ),
                SizedBox(
                  height: Utility.large + Utility.large,
                ),
                Image.asset(
                  "assets/book.png",
                ),
                TextLabel(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  color: Utility.baseColor1,
                  align: TextAlign.justify,
                ),
                SizedBox(
                  height: Utility.medium,
                ),
                Button1(
                    colorBtn: Utility.baseColor1,
                    radius: 40,
                    contentButton: Center(
                      child: TextLabel(
                        text: "START",
                        size: 30,
                        color: Utility.baseColor4,
                      ),
                    ),
                    onTap: () => controller.pageLogin())
              ],
            ),
          );
        });
  }

  Widget _screenDoots() {
    return Obx(
      () => DotsIndicator(
        dotsCount: 3,
        position: controller.indexCorousel.value,
        decorator: DotsDecorator(
          size: const Size.square(9.0),
          color: Utility.baseColor1,
          activeColor: Utility.baseColor3,
          activeSize: const Size(30.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );
  }
}
