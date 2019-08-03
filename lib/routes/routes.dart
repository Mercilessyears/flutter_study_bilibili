import 'package:bilibili_app/pages/swiper_page.dart';
import 'package:bilibili_app/tabs/tab_page.dart';
import 'package:flutter/material.dart';

final routes = {
  '/': (context, {arguments}) => TabPage(),
  '/swipertest': (context, {arguments}) => SwiperPage()
};



var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
};
