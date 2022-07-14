part of 'pages.dart';

class ProductionSupport extends StatelessWidget {
  const ProductionSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardContent({required String title, required String img}) {
      return Container(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        width: 170,
        height: 238,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style:
                  whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
            )
          ],
        ),
      );
    }

    return Container(
        // height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
      reverse: true,
      scrollDirection: Axis.vertical,
      child: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EquimentPage()));
                    },
                    child: cardContent(
                        title: 'Equipment', img: 'assets/images/equipment.png'),
                  ),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CrewPage()));
                  } ,child: cardContent(title: 'Crew', img: 'assets/images/crew.png')),
                ],
              ),
            ]),
      ),
    ));
  }
}
