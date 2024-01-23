part of "./dashboard.dart";

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                InkWell(
                  onTap: () async => Routes.routeTo(type: "dashboard2"),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Utility.baseColor1,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Utility.medium),
                            topRight: Radius.circular(Utility.medium))),
                    child: Padding(
                      padding: EdgeInsets.all(Utility.medium),
                      child: ExpandedView2Row(
                          flexLeft: 20,
                          flexRight: 80,
                          widgetLeft: Icon(
                            Icons.person_pin,
                            color: Utility.baseColor3,
                            size: 50,
                          ),
                          widgetRight: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextLabel(
                                text: "Bayu Hardiansyah",
                                size: Utility.large,
                              ),
                              SizedBox(
                                height: Utility.medium,
                              ),
                              const TextLabel(
                                text: "lorem ipsum",
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Utility.baseColor5,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(Utility.large),
                            child: TextLabel(
                              text: "Lorem Ipsum",
                              color: Utility.baseColor1,
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
