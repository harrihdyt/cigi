part of 'pages.dart';

class SpecialEvent extends StatelessWidget {
  const SpecialEvent({Key? key}) : super(key: key);

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
          'Special Event',
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
              title: 'Pekan Raya Jakarta',
              img: 'assets/images/prj.png'),
          CardWidget(
              // onPress: () {},
              title: 'Dugderan',
              img: 'assets/images/dugderan.png'),
          CardWidget(
              // onPress: () {},
              title: 'Road Race',
              img: 'assets/images/race.png'),
          CardWidget(
              // onPress: () {},
              title: 'Tour Fourty Twenty',
              img: 'assets/images/tour.png'),
          CardWidget(
              // onPress: () {},
              title: 'Pameran Lukisan',
              img: 'assets/images/pameran.png'),
          CardWidget(
              // onPress: () {},
              title: 'Festifal Budaya',
              img: 'assets/images/fest.png'),
        ],
      ),
    );
  }
}
