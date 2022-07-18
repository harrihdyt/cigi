part of 'login.dart';

class VoucherLogin extends StatelessWidget {
  const VoucherLogin({Key? key}) : super(key: key);

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
              showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => Center(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Text('Masuk',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 28,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Login untuk mengakses semua menu',
                                style: blackTextStyle),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: blueColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan Facebook',
                                      style: whiteTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  final provider = Provider.of<AuthService>(
                                      context,
                                      listen: false);
                                  provider.signInWithGoogle();
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: whiteColor,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/google.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan google',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: bold,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )));
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Cafe',
                img: 'assets/images/cafe.png'),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => Center(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Text('Masuk',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 28,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Login untuk mengakses semua menu',
                                style: blackTextStyle),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: blueColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan Facebook',
                                      style: whiteTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  final provider = Provider.of<AuthService>(
                                      context,
                                      listen: false);
                                  provider.signInWithGoogle();
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: whiteColor,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/google.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan google',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: bold,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )));
            },
            child: CardWidget(
                // onPress: () {},
                title: 'Level Voucher',
                img: 'assets/images/level.png'),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => Center(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            Text('Masuk',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 28,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Login untuk mengakses semua menu',
                                style: blackTextStyle),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: blueColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan Facebook',
                                      style: whiteTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                AuthService().signInWithGoogle();
                              },
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: greyColor.withOpacity(0.1),
                                          spreadRadius: 8,
                                          blurRadius: 4,
                                          offset: Offset(0, 1))
                                    ]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/google.png',
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Lanjutkan dengan google',
                                      style: blackTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )));
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
