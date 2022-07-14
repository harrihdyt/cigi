part of 'pages.dart';

class CreativeGoods extends StatelessWidget {
  const CreativeGoods({Key? key}) : super(key: key);

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
          'Creative Goods',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(title: 'Boemboe Mandhe', img: 'assets/images/mandhe.png'),
          CardWidget(title: 'Shojiru', img: 'assets/images/shojiru.png'),
          CardWidget(title: 'Misscrip', img: 'assets/images/misscrip.png'),
          CardWidget(title: 'Cireng Chips', img: 'assets/images/cireng.png'),
          CardWidget(title: 'Soes Kriuk', img: 'assets/images/soes.png'),
          CardWidget(title: 'Ainun Cake', img: 'assets/images/ainun.png'),
        ],
      ),
    );
  }
}
