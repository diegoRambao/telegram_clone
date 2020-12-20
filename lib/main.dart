import 'package:flutter/material.dart';

import 'home_page.dart';
import 'profile.dart';
import 'options_page.dart';

void main() => runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      initialRoute: 'home',
      routes: {
        'home' : (context) => HomePage(),
        'profile': (context) => ProfilePage(),
        'options': (context) => OptionPage()
      },
    )
);

