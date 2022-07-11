part of 'pages.dart';

class ExtremeSport extends StatelessWidget {
  const ExtremeSport({Key? key}) : super(key: key);

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
          'Extreme Sport',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(title: 'Panjat Tebing', img: 'assets/images/panjat.png'),
          CardWidget(title: 'Berselancar', img: 'assets/images/surf.png'),
          CardWidget(title: 'Skateboard', img: 'assets/images/skate.png'),
          CardWidget(title: 'Sepeda Gunung', img: 'assets/images/bike.png'),
          CardWidget(title: 'Berkuda', img: 'assets/images/kuda.png'),
          CardWidget(title: 'Paralayang', img: 'assets/images/layang.png'),
        ],
      ),
    );
  }
}
