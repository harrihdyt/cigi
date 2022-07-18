part of 'pages.dart';

class MakeitHappen extends StatelessWidget {
  const MakeitHappen({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => DirectoryPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Directory',
                img: 'assets/images/director.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TipsPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Tips',
                img: 'assets/images/tips.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Contact Management',
                img: 'assets/images/contact.png'),
          ),
        ],
      ),
    );
  }
}
