part of 'login.dart';

class SearchLogin extends StatelessWidget {
  const SearchLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget containerRef(String title, String img) {
      return Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        width: 150,
        height: 123,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: whiteTextStyle.copyWith(fontWeight: bold),
            )
          ],
        ),
      );
    }

    Widget search() {
      return GridView.count(
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
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            showSearch(context: context, delegate: MySearchDelegete());
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: lightGrey,
                    )),
                Text('Cari ide', style: greyTextStyle.copyWith(fontSize: 16)),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_enhance,
                      color: lightGrey,
                    ))
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Referensi Pencarian',
              style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 500,
              child: search(),
            )
          ],
        ),
      ),
    );
  }
}

class MySearchDelegete extends SearchDelegate {
  List<String> searchResult = [
    'Nature',
    'Food',
    'Trend',
    'Hidengym',
    'Healing'
  ];

  // @override
  // Widget? buildLeadding(BuildContext context) => IconButton(onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));

  // @override
  // List<Widget>?buildAction(BuildContext context) => [
  //   IconButton(onPressed: (){
  //     if (query.isEmpty) {
  //       close(context, null);
  //     } else{
  //       query = '';
  //     }
  //   }, icon: Icon(Icons.clear)),
  // ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: blackTextStyle.copyWith(fontSize: 64, fontWeight: bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResult.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;

              showResults(context);
            },
          );
        });
  }

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: Icon(Icons.clear)),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));
}
