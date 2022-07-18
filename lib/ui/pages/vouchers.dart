part of 'pages.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({Key? key}) : super(key: key);

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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CafePage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Cafe',
                img: 'assets/images/cafe.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LevelVoucherPage()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Level Voucher',
                img: 'assets/images/level.png'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VoucherDetail()));
              print('berhasil di tekan');
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Voucher',
                img: 'assets/images/voucher.png'),
          ),
        ],
      ),
    );
  }
}
