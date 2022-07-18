part of 'pages.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final cityController = TextEditingController();
    final phoneController = TextEditingController();

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
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  FirebaseAuth.instance.currentUser!.photoURL!,
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                )),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Ganti Foto')),
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
                controller: nameController,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: FirebaseAuth.instance.currentUser!.displayName!,
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
                controller: phoneController,
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Nomor Telepon',
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
                expands: false,
                decoration: InputDecoration(
                  filled: false,
                  hintText: FirebaseAuth.instance.currentUser!.email!,
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
                controller: cityController,
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
            InkWell(
              onTap: () {
                setState(() {
                  final name = nameController.text;
                  final email = emailController.text;
                  final city = cityController.text;
                  final phoneNumber = phoneController.hashCode;

                  createUser(
                    name: name,
                    city: city,
                    email: email,
                    phoneNumber: phoneNumber,
                  );
                });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: tropicalColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Simpan',
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

Future createUser(
    {required String email,
    required String name,
    required String city,
    required int phoneNumber}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc('my-id');

  final json = {
    'name': name,
    'email': email,
    'city': city,
    'phoneNumber': phoneNumber,
  };

  await docUser.set(json);
}
