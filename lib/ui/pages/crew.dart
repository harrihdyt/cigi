part of 'pages.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({Key? key}) : super(key: key);

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
          'Crew',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CardWidget(title: 'Br Creative', img: 'assets/images/br.png'),
          CardWidget(title: 'Win Art Photography', img: 'assets/images/win.png'),
          CardWidget(title: 'Epicologie.id', img: 'assets/images/epic.png'),
          CardWidget(title: 'Photatos Photo', img: 'assets/images/photo.png'),
          CardWidget(title: 'Bess Production', img: 'assets/images/bess.png'),
          CardWidget(title: 'Prize Photography', img: 'assets/images/prize.png'),
        ],
      ),
    );
  }
}
