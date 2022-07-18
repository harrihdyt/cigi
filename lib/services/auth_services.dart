part of 'services.dart';

class AuthService extends ChangeNotifier {
  // FirebaseAuth _auth = FirebaseAuth.instance.currentUser;

// ! Signin with google
  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>[]).signIn();

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
          return Testing();
        }
      },
    );
  }

  // !signout
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
