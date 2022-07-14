part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

Widget profile(){
  return Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        ClipRRect(borderRadius: BorderRadius.circular(100) ,child: Image.asset('assets/images/user.png', fit: BoxFit.cover, width: 64, height: 64,)),
        SizedBox(width: 20,),
            Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Alex Rins', style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20,), textAlign: TextAlign.start,),
                SizedBox(height: 5,),
            Text('alexrins@gmail.com', style: greyTextStyle.copyWith(fontWeight: light, fontSize: 12,), textAlign: TextAlign.start,)
              ],
            )),
          ],
        )
          ],
        )
  );
}

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text('Profile', style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 28),),
              profile(),
              SizedBox(height: 60,),
              InkWell(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.lock_outline, color: blackColor,),
                      SizedBox(width: 10,),
                      Text('Ubah Password', style: blackTextStyle.copyWith(fontSize: 16,fontWeight: semiBold),),
                      Spacer(),
                      Icon(Icons.chevron_right, color: blackColor,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                },
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.edit_note_sharp, color: blackColor,),
                      SizedBox(width: 10,),
                      Text('Ubah Profile', style: blackTextStyle.copyWith(fontSize: 16,fontWeight: semiBold),),
                      Spacer(),
                      Icon(Icons.chevron_right, color: blackColor,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.logout,color: redColor),
                      SizedBox(width: 10,),
                      Text('Keluar', style: blackTextStyle.copyWith(fontSize: 16,fontWeight: semiBold),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
