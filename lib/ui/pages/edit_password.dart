part of 'pages.dart';

class EditPasswordPage extends StatefulWidget {
  const EditPasswordPage({Key? key}) : super(key: key);

  @override
  State<EditPasswordPage> createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 2,
          centerTitle: true,
          title: Text(
            'Ubah Profile',
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
          iconTheme: IconThemeData(
            color: blackColor,
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 30),
        child: Column(
          children: [
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
                expands: false,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Masukan password lama',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure
                          ? Icons.visibility
                          : Icons.visibility_off)),
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
                obscureText: _isObscure,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Masukan password baru',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure
                          ? Icons.visibility
                          : Icons.visibility_off)),
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
                obscureText: _isObscure,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Konfirmasi password baru',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: tropicalColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Ubah Password',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
