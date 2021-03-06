part of 'pages.dart';

class ColaborationPage extends StatelessWidget {
  const ColaborationPage({Key? key}) : super(key: key);

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
          'Colaboration',
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
              title: 'Isyana Sarasvati',
              img: 'assets/images/isyana.png'),
          CardWidget(
              // onPress: () {},
              title: 'Arief Muhammad',
              img: 'assets/images/arief.png'),
          CardWidget(
              // onPress: () {},
              title: 'Deny Sumargo',
              img: 'assets/images/deny.png'),
          CardWidget(
              // onPress: () {},
              title: 'Baim Wong',
              img: 'assets/images/baim.png'),
          CardWidget(
              // onPress: () {},
              title: 'Randy Martin',
              img: 'assets/images/randy.png'),
          CardWidget(
              // onPress: () {},
              title: 'Bastian Steel',
              img: 'assets/images/bastian.png'),
        ],
      ),
    );
  }
}
