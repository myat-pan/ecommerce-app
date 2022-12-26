// ignore_for_file: avoid_print

import 'package:ecommerce_app/src/modules/login/views/login_screen.dart';
/* import 'package:firebase_auth/firebase_auth.dart'; */
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainScreen extends StatefulWidget {
  final GoogleSignInAccount? user;
  const MainScreen({Key? key, this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
/*   final FirebaseAuth _auth = FirebaseAuth.instance; */
  GoogleSignInAccount? _currentUser;

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
    _googleSignIn.disconnect();
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
          ListTile(
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
