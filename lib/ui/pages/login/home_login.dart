part of 'login.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
      length: 4,
      vsync: this,
    );
    // final user = FirebaseAuth.instance.currentUser!;
    int currentIndex = 0;

    // Widget gridCostum({required String title, required String img}) {
    //   return GridView.count(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 5,
    //     children: [
    //       CardWidget(title: title, img: img),
    //       CardWidget(title: title, img: img),
    //       CardWidget(title: title, img: img),
    //       CardWidget(title: title, img: img),
    //       CardWidget(title: title, img: img),
    //       CardWidget(title: title, img: img)
    //     ],
    //   );
    // }

    Widget headerProfile() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hi, Welcome',
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'What idea are you looking for?',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            headerProfile(),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TabBar(
                enableFeedback: true,
                labelColor: whiteColor,
                labelStyle: tropicalTextStyle.copyWith(fontWeight: bold),
                unselectedLabelColor: greyColor,
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tropicalColor),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                unselectedLabelStyle: greyTextStyle.copyWith(fontWeight: light),
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Content Idea',
                  ),
                  Tab(
                    text: 'Production Support',
                  ),
                  Tab(
                    text: 'Making it Happen',
                  ),
                  Tab(
                    text: 'Vouchers',
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      width: double.infinity,
                      // height: 500,
                      child: SafeArea(
                        child: ContentLogin(),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      // height: 500,
                      child: SafeArea(
                        child: ProductionLogin(),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      // height: 500,
                      child: SafeArea(
                        child: MakeitLogin(),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      // height: 500,
                      child: SafeArea(
                        child: VoucherLogin(),
                      ),
                    ),
                  ],
                ),
              ),
            )
            // TabBarView(controller: _tabController, children: [
            //   Container(
            //     child: SingleChildScrollView(
            //       child: Column(
            //         children: [
            //           ContentIdea(),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Container(
            //     child: SingleChildScrollView(
            //       child: Column(
            //         children: [
            //           ProductionSupport(),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Container(
            //     child: SingleChildScrollView(
            //       child: Column(
            //         children: [
            //           MakeItHappen(),
            //         ],
            //       ),
            //     ),
            //   ),
            //   Container(
            //     child: SingleChildScrollView(
            //       child: Column(
            //         children: [
            //           Vouchers(),
            //         ],
            //       ),
            //     ),
            //   ),
            // ]),
          ],
        ),
      ),
    );
  }
}
