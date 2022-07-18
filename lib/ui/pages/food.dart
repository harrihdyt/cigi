part of 'pages.dart';

class ExoticFnB extends StatelessWidget {
  const ExoticFnB({Key? key}) : super(key: key);

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
          'Exotic F&B',
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
              title: 'Sop Buntut',
              img: 'assets/images/buntut.png'),
          CardWidget(
              // onPress: () {},
              title: 'Ayam Taliwang',
              img: 'assets/images/taliwang.png'),
          CardWidget(
              // onPress: () {},
              title: 'Bika Ambon',
              img: 'assets/images/bika.png'),
          CardWidget(
              // onPress: () {},
              title: 'Rendang',
              img: 'assets/images/rendang.png'),
          CardWidget(
              // onPress: () {},
              title: 'Ayam Betutu Bali',
              img: 'assets/images/betutu.png'),
          CardWidget(
              // onPress: () {},
              title: 'Cakalang Fufu Likupang',
              img: 'assets/images/cakalang.png'),
        ],
      ),
    );
  }
}
