// ignore_for_file: avoid_print

/* import 'package:firebase_auth/firebase_auth.dart'; */
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_module/login_controller.dart/login_screen.dart';

class MainScreen extends StatefulWidget {
  final GoogleSignInAccount? user;
  final FacebookUserProfile? profile;
  final String? fbImageUrl;
  const MainScreen({Key? key, this.user, this.profile, this.fbImageUrl})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
/*   final FirebaseAuth _auth = FirebaseAuth.instance; */
  GoogleSignInAccount? _currentUser;
  final fb = FacebookLogin();

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      /* if (_currentUser != null) {
        _handleGetContact(_currentUser!);
      } */
    });
  }

  Future<void> googleSignOut() async {
    // Sign out with firebase
    /*  await _auth.signOut(); */
    // Sign out with google
    if (widget.user != null) {
      _googleSignIn.disconnect();
    } else if (widget.profile != null) {
      fb.logOut();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                googleSignOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                    (route) => false);
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          widget.user == null
              ? ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                      image: NetworkImage(widget.fbImageUrl!),
                    ),
                  ),
                  title: Text(widget.profile!.name!),
                )
              : ListTile(
                  leading: GoogleUserCircleAvatar(
                    identity: widget.user!,
                  ),
                  title: Text(widget.user!.displayName ?? ''),
                  subtitle: Text(widget.user!.email),
                ),
          const Text('Signed in successfully.'),
          ElevatedButton(
            onPressed: googleSignOut,
            child: const Text('SIGN OUT'),
          ),
          /*     ElevatedButton(
            child: const Text('REFRESH'),
            onPressed: () => _handleGetContact(user),
          ), */
        ],
      ),
    );
  }
}
