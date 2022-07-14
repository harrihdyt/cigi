part of 'pages.dart';

class ReadProfilePage extends StatelessWidget {
  const ReadProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 2,
          centerTitle: true,
          title: Text(
            'Profile',
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
          iconTheme: IconThemeData(
            color: blackColor,
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 30),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/user.png',
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              child: TextFormField(
                cursorColor: greyColor,
                style: blackTextStyle,
                readOnly: true,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Nama',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              child: TextFormField(
                cursorColor: greyColor,
                style: blackTextStyle,
                readOnly: true,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Nomor',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              child: TextFormField(
                cursorColor: greyColor,
                style: blackTextStyle,
                readOnly: true,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Email',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(
                    12,
                  )),
              child: TextFormField(
                cursorColor: greyColor,
                style: blackTextStyle,
                readOnly: true,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Kota',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
