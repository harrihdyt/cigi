// part of 'pages.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     // Widget cardButton() {
//     //   return FloatingActionButton(
//     //     backgroundColor: whiteColor,
//     //     onPressed: () {
//     //       Navigator.pushNamed(context, '/cart-page');
//     //     },
//     //     child: Image.asset(
//     //       'assets/icon_cart.png',
//     //       width: 20,
//     //     ),
//     //   );
//     // }

//     Widget customButtomNav() {
//       return ClipRRect(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//         child: BottomNavigationBar(
//             backgroundColor: whiteColor,
//             currentIndex: currentIndex,
//             onTap: (value) {
//               setState(() {
//                 print(value);
//                 currentIndex = value;
//               });
//             },
//             type: BottomNavigationBarType.fixed,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 20, bottom: 10),
//                     child: Image.asset(
//                       'assets/images/home_icon.png',
//                       width: 25,
//                       color:
//                           currentIndex == 0 ? tropicalColor : Color(0xff808191),
//                     ),
//                   ),
//                   label: ''),
//               BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 20, bottom: 10),
//                     child: Image.asset(
//                       'assets/images/search_icon.png',
//                       width: 25,
//                       color:
//                           currentIndex == 1 ? tropicalColor : Color(0xff808191),
//                     ),
//                   ),
//                   label: ''),
//               BottomNavigationBarItem(
//                   icon: Container(
//                     margin: EdgeInsets.only(top: 20, bottom: 10),
//                     child: Image.asset(
//                       'assets/images/profile_icon.png',
//                       width: 25,
//                       color:
//                           currentIndex == 2 ? tropicalColor : Color(0xff808191),
//                     ),
//                   ),
//                   label: ''),
//             ]),
//       );
//     }

//     Widget? body() {
//       switch (currentIndex) {
//         case 0:
//           return LoginHome();
//           break;
//         case 1:
//           return SearchPage();
//           break;
//         case 2:
//           return ProfilePage();
//           break;
//         default:
//           return LoginHome();
//       }
//     }

//     return Scaffold(
//       backgroundColor: whiteColor,
//       // floatingActionButton: cardButton(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//       bottomNavigationBar: customButtomNav(),
//       body: body(),
//     );
//   }
// }
