part of 'pages.dart';

class ProductionSupport extends StatelessWidget {
  const ProductionSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EquimentPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Equipment',
                img: 'assets/images/equipment.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CrewPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Crew',
                img: 'assets/images/crew.png'),
          ),
        ],
      ),
    );
  }
}
