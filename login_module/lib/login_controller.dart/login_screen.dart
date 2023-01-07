// ignore_for_file: avoid_print

/* import 'package:firebase_auth/firebase_auth.dart'; */
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:home_module/Views/home_screen.dart';
import 'package:main_module/main_screen.dart';
import 'package:network_module/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phController = TextEditingController();
/*   final FirebaseAuth _auth = FirebaseAuth.instance; */
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser;
  // Create an instance of FacebookLogin
  final fb = FacebookLogin();
  FacebookUserProfile? profile;
  String? fbImageUrl;

  @override
  void initState() {
    super.initState();
    /*   _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {}
    });
    _googleSignIn.signInSilently(); */
  }

  //--------------------- Login with Phone NUmber -----------------
  Widget logoSection() {
    return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Ecommerce'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Utils.secondaryColor),
            ),
            Text(
              'Application'.toUpperCase(),
              style: const TextStyle(
                  color: Utils.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
          ],
        ));
  }

  Widget phoneTextField() {
    return Container(
        margin: const EdgeInsets.only(top: 120, left: 28, right: 28),
        child: TextFormField(
          controller: _phController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          autofocus: false,
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.phone_android_outlined,
              color: Utils.primaryColor,
            ),
            labelText: "Phone Number",
            hintText: "Please Enter Your Phone Number",
            border: InputBorder.none,
          ),
        ));
  }

  Widget buttonSection() {
    return Container(
        margin: const EdgeInsets.only(left: 28, right: 28),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 12,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              primary: Utils.primaryColor),
          onPressed: () {},
          child: const Text('Login'),
        ));
  }

//----------------- Divider Section -------------
  Widget dividerSection() {
    return Container(
        margin: const EdgeInsets.only(top: 42, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Utils.primaryColor,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Or Login With',
              style: TextStyle(
                  color: Utils.secondaryColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Utils.primaryColor,
              ),
            ),
          ],
        ));
  }

//---------------- Google Login ---------------

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);

  Future<void> signUp(BuildContext context) async {
    final GoogleSignInAccount? _googleSignInAccount =
        await _googleSignIn.signIn();
    if (_googleSignInAccount != null) {
      Get.offAll(HomeScreen());
      /*  Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MainScreen(
                    user: _googleSignInAccount,
                  ))); */
    }
    /*  if (_googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await _googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      UserCredential result = await _auth.signInWithCredential(authCredential);
      User? user = result.user;

      if (result != null) {
        print(user?.uid);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      } else {
        print("!!!!!Google Sign In Error");
      }
    } */
  }

  Widget googleSection() {
    return Container(
      child: IconButton(
        icon: const Icon(
          FontAwesomeIcons.google,
          color: Utils.primaryColor,
          size: 28,
        ),
        onPressed: () {
          signUp(context);
        },
      ),
    );
  }

  //--------------------- Facebook Login ----------------
  Widget facebookSection() {
    return Container(
      child: IconButton(
        icon: const Icon(
          FontAwesomeIcons.facebookSquare,
          color: Utils.primaryColor,
          size: 28,
        ),
        onPressed: () async {
          var facebookLogin = FacebookLogin();

          final res = await facebookLogin.logIn(permissions: [
            FacebookPermission.publicProfile,
            FacebookPermission.email,
            // FacebookPermission.userFriends,
          ]);

          print(res.status);
          var accessToken = res.accessToken;
          print(accessToken);

          print(res);
          switch (res.status) {
            case FacebookLoginStatus.error:
              print("Error");
              // onLoginStatusChanged(false);
              break;
            case FacebookLoginStatus.cancel:
              print("CancelledByUser");
              //onLoginStatusChanged(false);
              break;
            case FacebookLoginStatus.success:
              print("LoggedIn");
              profile = await fb.getUserProfile();
              fbImageUrl = await fb.getProfileImageUrl(width: 100);
              Get.offAll(HomeScreen());
              /*  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainScreen(
                            profile: profile,
                            fbImageUrl: fbImageUrl,
                          ))); */
              //  onLoginStatusChanged(true);
              break;
          }
        },
      ),
    );
  }

  _updateLoginInfo() async {
    final token = await fb.accessToken;
    FacebookUserProfile? profile;
    String? email;
    String? imageUrl;

    if (token != null) {
      profile = await fb.getUserProfile();
      if (token.permissions.contains(FacebookPermission.email.name)) {
        email = await fb.getUserEmail();
      }
      imageUrl = await fb.getProfileImageUrl(width: 100);
    }
  }

//---------------------------------
  Widget socialLoginSection() {
    return Container(
        margin: const EdgeInsets.only(top: 82),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [googleSection(), facebookSection()],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          logoSection(),
          phoneTextField(),
          buttonSection(),
          dividerSection(),
          socialLoginSection()
        ],
      ),
    );
  }
}
