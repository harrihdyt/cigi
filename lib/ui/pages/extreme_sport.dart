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
          CardWidget(
              // onPress: () {},
              title: 'Panjat Tebing',
              img: 'assets/images/panjat.png'),
          CardWidget(
              // onPress: () {},
              title: 'Berselancar',
              img: 'assets/images/surf.png'),
          CardWidget(
              // onPress: () {},
              title: 'Skateboard',
              img: 'assets/images/skate.png'),
          CardWidget(
              // onPress: () {},
              title: 'Sepeda Gunung',
              img: 'assets/images/bike.png'),
          CardWidget(
              // onPress: () {},
              title: 'Berkuda',
              img: 'assets/images/kuda.png'),
          CardWidget(
              // onPress: () {},
              title: 'Paralayang',
              img: 'assets/images/layang.png'),
        ],
      ),
    );
  }
}
