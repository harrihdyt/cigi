// part of 'widget.dart';

// class TabbarMenu extends StatefulWidget {
//   const TabbarMenu({Key? key}) : super(key: key);

//   @override
//   State<TabbarMenu> createState() => _TabbarMenuState();
// }

// class _TabbarMenuState extends State<TabbarMenu> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 4, vsync: this);
//     return Column(
//       children: [
//         Container(
//           child: TabBar(
//             controller: _tabController,
//             labelColor: whiteColor,
//             labelStyle: tropicalTextStyle.copyWith(fontWeight: bold),
//             unselectedLabelColor: greyColor,
//             isScrollable: true,
//             indicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12), color: tropicalColor),
//             labelPadding: EdgeInsets.symmetric(horizontal: 20),
//             unselectedLabelStyle: greyTextStyle.copyWith(fontWeight: light),
//             tabs: [
//               Tab(
//                 text: 'Content Idea',
//               ),
//               Tab(
//                 text: 'Product Support',
//               ),
//               Tab(
//                 text: 'Making it Happen',
//               ),
//               Tab(
//                 text: 'Vouchers',
//               )
//             ],
//           ),
//         ),
//         // SizedBox(
//         //   height: 30,
//         // ),
//         Container(
//           width: double.maxFinite,
//           height: MediaQuery.of(context).size.height,
//           child: TabBarView(controller: _tabController, children: [
//             ContentIdea(),
//             Text('h2'),
//             Text('H3'),
//             Text('H3'),
//           ]),
//         ),
//       ],
//     );
//   }
// }
