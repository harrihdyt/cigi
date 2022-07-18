part of 'login.dart';

class MakeitLogin extends StatelessWidget {
  const MakeitLogin({Key? key}) : super(key: key);

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
                    maxHeight: MediaQuery.of(context).size.height / 3,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20))),
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
                title: 'Directory',
                img: 'assets/images/director.png'),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 3,
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
                title: 'Tips',
                img: 'assets/images/tips.png'),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height / 3,
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
                title: 'Contact Management',
                img: 'assets/images/contact.png'),
          ),
        ],
      ),
    );
  }
}
