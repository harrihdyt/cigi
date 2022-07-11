part of 'pages.dart';

class ContentIdea extends StatelessWidget {
  ContentIdea({Key? key}) : super(key: key);

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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ExoticFnB()));
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
