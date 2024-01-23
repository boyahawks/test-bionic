part of "./dashboard.dart";

class Dashboard2Screen extends StatefulWidget {
  const Dashboard2Screen({super.key});

  @override
  _DashboardScree2nState createState() => _DashboardScree2nState();
}

class _DashboardScree2nState extends State<Dashboard2Screen> {
  DashboardController controller = Get.put(DashboardController());

  @override
  void initState() {
    controller.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      type: "default",
      colorBackground: Utility.baseColor2,
      colorSafeArea: Utility.baseColor2,
      returnOnWillpop: false,
      backFunction: () => Get.back(),
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
          Padding(
            padding: EdgeInsets.all(Utility.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Utility.large + Utility.large,
                ),
                Center(
                  child: TextLabel(
                    text: "lorem ipsum",
                    size: Utility.extraLarge,
                    color: Utility.baseColor1,
                  ),
                ),
                SizedBox(
                  height: Utility.medium,
                ),
                Flexible(
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemCount: 20,
                        controller: controller.controllerScroll,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                top: Utility.verySmall,
                                left: Utility.verySmall,
                                right: Utility.verySmall),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 2.0,
                                ),
                                borderRadius: Utility.borderStyle2),
                            child: Padding(
                              padding: EdgeInsets.all(Utility.medium),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel(
                                    text: "Lorem ipsum",
                                    color: Utility.baseColor1,
                                    size: Utility.large,
                                  ),
                                  SizedBox(
                                    height: Utility.verySmall,
                                  ),
                                  TextLabel(
                                    text: "Lorem ipsum",
                                    color: Utility.baseColor1,
                                  ),
                                  SizedBox(
                                    height: Utility.extraLarge,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Utility.baseColor3,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.code,
                                          color: Utility.baseColor1,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
