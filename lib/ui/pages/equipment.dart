part of 'pages.dart';

class EquimentPage extends StatelessWidget {
  const EquimentPage({Key? key}) : super(key: key);

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
          'Equipment',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(title: 'Galaxy Camera', img: 'assets/images/came.png'),
          CardWidget(title: 'Star Digital', img: 'assets/images/star.png'),
          CardWidget(title: 'Wide', img: 'assets/images/wide.png'),
          CardWidget(title: 'One Camera Store', img: 'assets/images/one.png'),
          CardWidget(title: 'Macronic Computer', img: 'assets/images/compt.png'),
          CardWidget(title: 'DOSS Superstore', img: 'assets/images/super.png'),
        ],
      ),
    );
  }
}
