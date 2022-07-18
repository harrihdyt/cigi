part of 'login.dart';

class MainLogin extends StatefulWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  State<MainLogin> createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customButtomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
            backgroundColor: whiteColor,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                print(value);
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/images/home_icon.png',
                      width: 25,
                      color:
                          currentIndex == 0 ? tropicalColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/images/search_icon.png',
                      width: 25,
                      color:
                          currentIndex == 1 ? tropicalColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/images/profile_icon.png',
                      width: 25,
                      color:
                          currentIndex == 2 ? tropicalColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
            ]),
      );
    }

    Widget? body() {
      switch (currentIndex) {
        case 0:
          return HomeLogin();
          break;
        case 1:
          return SearchPage();
          break;
        case 2:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      // floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}
