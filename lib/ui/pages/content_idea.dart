part of 'pages.dart';

class ContenIdea extends StatelessWidget {
  const ContenIdea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CoolSpotPage()));
                print('berhasil di tekan');
              },
              child: CardWidget(
                  title: 'Cool Spot', img: 'assets/images/cool.png')),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExoticFnB()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Exotic F&B',
                img: 'assets/images/exotic.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColaborationPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Collaboration',
                img: 'assets/images/colab.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExtremeSport()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Extreme Sport',
                img: 'assets/images/extreme.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreativeGoods()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Creative Goods',
                img: 'assets/images/creative.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SpecialEvent()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Special Event',
                img: 'assets/images/special.png'),
          ),
        ],
      ),
    );
  }
}
