part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
      length: 4,
      vsync: this,
    );

    @override
    void initState() {
      super.initState();
      Timer(
          Duration(milliseconds: 10),
          () => showModalBottomSheet(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height / 3.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              )),
              context: context,
              builder: (context) => Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Masuk',
                          style: blackTextStyle.copyWith(
                              fontWeight: bold, fontSize: 28),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Login untuk mengakses semua menu',
                          style: blackTextStyle,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 58),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(
                                  16,
                                )),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  width: 32,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Lanjutkan dengan Facebook',
                                  style:
                                      whiteTextStyle.copyWith(fontWeight: bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )));
    }

    loginBottomSheet() {
      return showModalBottomSheet(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height / 3.5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )),
          context: context,
          builder: (context) => Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Masuk',
                      style: blackTextStyle.copyWith(
                          fontWeight: bold, fontSize: 28),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Login untuk mengakses semua menu',
                      style: blackTextStyle,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 58),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(
                              16,
                            )),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/facebook.png',
                              width: 32,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Lanjutkan dengan Facebook',
                              style: whiteTextStyle.copyWith(fontWeight: bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ));
    }

    int currentIndex = 0;

    header() {
      return AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: whiteColor,
        title: Column(
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
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hi, Alex',
              style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
            ),
            Text(
              'What idea are you looking for?',
              style: blackTextStyle.copyWith(fontWeight: reguler, fontSize: 16),
            ),
            SizedBox(height: 20),
          ],
        ),
        bottom: TabBar(
            controller: _tabController,
            enableFeedback: true,
            labelColor: whiteColor,
            labelStyle: tropicalTextStyle.copyWith(fontWeight: bold),
            unselectedLabelColor: greyColor,
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: tropicalColor),
            labelPadding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            unselectedLabelStyle: greyTextStyle.copyWith(fontWeight: light),
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
              )
            ]),
        elevation: 0,
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: TabBarView(controller: _tabController, children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ContentIdea(),
              ],
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProductionSupport(),
              ],
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MakeItHappen(),
              ],
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Vouchers(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
