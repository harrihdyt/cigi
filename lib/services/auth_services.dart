part of 'services.dart';

class AuthService extends ChangeNotifier {
  // FirebaseAuth _auth = FirebaseAuth.instance.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();

// ! Signin with google
  Future signInWithGoogle() async {
    final googleUser = await googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }

  // !handel signin
  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainPage();
        } else {
          return MainLogin();
        }
      },
    );
  }

  // !signout
  Future signOut() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
