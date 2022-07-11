part of 'pages.dart';

class MakeItHappen extends StatelessWidget {
  MakeItHappen({Key? key}) : super(key: key);

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
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
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
                  cardContent(
                      title: 'Directory', img: 'assets/images/director.png'),
                  cardContent(title: 'Tips', img: 'assets/images/tips.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  cardContent(
                      title: 'Contact Management',
                      img: 'assets/images/contact.png'),
                ],
              ),
            ]),
      ),
    ));
  }
}