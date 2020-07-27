import 'package:yesorno/models/user.dart';
import 'package:yesorno/screens/authenticate/authenticate.dart';
import 'package:yesorno/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate(); // user가 null 이면 권한 페이지로
    } else {
      return Home(); // 정보가 있으면 home 으로
    }

  }
}