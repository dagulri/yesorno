import 'package:yesorno/screens/authenticate/sign_in.dart';
import 'package:yesorno/screens/authenticate/register.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView:  toggleView); //showSignIn를 통해서 회원일때와 아닐때를 구분 할 수 있아
    } else {
      return Register(toggleView:  toggleView);
    }
  }
}