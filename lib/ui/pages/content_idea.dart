part of 'pages.dart';

class ContentIdea extends StatelessWidget {
  ContentIdea({Key? key}) : super(key: key);

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    Widget cardContent({required String title, required String img}) {
      return Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        width: 170,
        height: 238,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            )
          ],
        ),
      );
    }

    return Container(
        // height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
      reverse: true,
      scrollDirection: Axis.vertical,
      child: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoolSpotPage()));
                    },
                    child: cardContent(
                        title: 'Cool Spot', img: 'assets/images/cool.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      isVisible
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExoticFnB()))
                          : showModalBottomSheet(
                              constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height / 3.5),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 58),
                                        width: double.infinity,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: blueColor,
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              style: whiteTextStyle.copyWith(
                                                  fontWeight: bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                    },
                    child: cardContent(
                        title: 'Exotic F&B', img: 'assets/images/exotic.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColaborationPage()));
                    },
                    child: cardContent(
                        title: 'Colaboration', img: 'assets/images/colab.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExtremeSport()));
                    },
                    child: cardContent(
                        title: 'Extreme Sport',
                        img: 'assets/images/extreme.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreativeGoods()));
                    },
                    child: cardContent(
                        title: 'Creative Goods',
                        img: 'assets/images/creative.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpecialEvent()));
                    },
                    child: cardContent(
                        title: 'Special Event',
                        img: 'assets/images/special.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ]),
      ),
    ));
  }
}
