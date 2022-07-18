part of 'widget.dart';

class CardWidget extends StatelessWidget {
  String title;
  String img;
  int width;
  int height;
  // Function onPress;

  CardWidget(
      {Key? key,
      required this.title,
      required this.img,
      // required this.onPress,
      this.width = 185,
      this.height = 285})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 10),
      width: 185,
      height: 285,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
        ],
      ),
    );
  }
}
