import 'package:flutter/material.dart';

import '../model/tab.dart';
import 'forecast_page.dart';
import 'locations_page.dart';
import 'settings_page.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {super.key, required this.navigatorKey, required this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        Widget currentPage;
        if (tabItem == TabItem.FORECAST) {
          currentPage = ForecastPage();
        } else if (tabItem == TabItem.LOCATIONS) {
          currentPage = LocationsPage();
        } else {
          currentPage = SettingsPage();
        }
        return MaterialPageRoute(builder: (context) => currentPage);
      },
    );
  }
}
