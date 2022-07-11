part of 'pages.dart';

class CoolSpotPage extends StatelessWidget {
  const CoolSpotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 2,
        centerTitle: false,
        iconTheme: IconThemeData(color: blackColor),
        title: Text(
          'Cool Spot',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(title: 'Curug Lawe', img: 'assets/images/lawe.png'),
          CardWidget(
              title: 'Madakaripura', img: 'assets/images/madakaripura.png'),
          CardWidget(title: 'Saluopa', img: 'assets/images/saluopa.png'),
          CardWidget(title: 'Mursala', img: 'assets/images/mursala.png'),
          CardWidget(title: 'Curug Malela', img: 'assets/images/malela.png'),
          CardWidget(title: 'Curug Cikaso', img: 'assets/images/cikaso.png'),
          CardWidget(title: 'Sri Gethuk', img: 'assets/images/srigethuk.png'),
          CardWidget(title: 'Moramo', img: 'assets/images/moramo.png'),
        ],
      ),
    );
  }
}
