import 'package:flutter/material.dart';
import 'package:components_app/pages/card_page.dart';
import 'package:components_app/pages/alert_page.dart';
import 'package:components_app/pages/avatars_page.dart';
import 'package:components_app/pages/home_page.dart';
import 'package:components_app/pages/test_page.dart';
import 'package:components_app/pages/animation_container.dart';

Map<String, WidgetBuilder> getRouter() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarsPage(),
    'card': (BuildContext context) => CardPage(),
    'test': (BuildContext context) => TestPage(),
    'animatedContainer': (BuildContext context) => AnimContainer()
  };
}
