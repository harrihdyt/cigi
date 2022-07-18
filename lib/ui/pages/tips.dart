part of 'pages.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({Key? key}) : super(key: key);

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
          'Tips',
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
              title: 'Galaxy Camera',
              img: 'assets/images/came.png'),
          CardWidget(
              // onPress: () {},
              title: 'Star Digital',
              img: 'assets/images/star.png'),
          CardWidget(
              // onPress: () {},
              title: 'Wide',
              img: 'assets/images/wide.png'),
          CardWidget(
              // onPress: () {},
              title: 'One Camera Store',
              img: 'assets/images/one.png'),
          CardWidget(
              // onPress: () {},
              title: 'Macronic Computer',
              img: 'assets/images/compt.png'),
          CardWidget(
              // onPress: () {},
              title: 'DOSS Superstore',
              img: 'assets/images/super.png'),
        ],
      ),
    );
  }
}
