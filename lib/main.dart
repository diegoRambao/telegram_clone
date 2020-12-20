import 'package:flutter/material.dart';

import 'home_page.dart';
import 'package:telegram_clone/profile.dart';

void main() => runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      initialRoute: 'home',
      routes: {
        'home' : (context) => HomePage(),
        'profile': (context) => ProfilePage()
      },
    )
);

