import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hong_center/model/home_screen_vmodel.dart';
import 'package:hong_center/screeen/home_screen.dart';
import 'package:hong_center/screeen/job_detail_screen.dart';
import 'package:hong_center/screeen/job_list_screen.dart';
import 'package:hong_center/utils/extensions/routing_data.dart';
import 'package:hong_center/utils/extensions/string_extensions.dart';
import 'package:hong_center/utils/transition.dart';
import 'package:provider/provider.dart';

class Routes {
  static const root = '/';
  static const jobList = '/jobList';
  static const jobDetail = '/jobDetail';
}

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    RoutingData routingData = settings.name!.getRoutingData;
    switch (routingData.route) {
      case Routes.root:
        return PlainRoute(
            settings: settings,
            page: ChangeNotifierProvider<HomeScreenViewModel>(
                create: (context) => HomeScreenViewModel(),
                child: const HomeScreen()));

      case Routes.jobList:
        return SlideLeftRoute(
            settings: settings,
            page: ChangeNotifierProvider<HomeScreenViewModel>(
                create: (context) => HomeScreenViewModel(),
                child: const JobListScreen()));

      case Routes.jobDetail:
        return SlideLeftRoute(
            settings: settings,
            page: ChangeNotifierProvider<HomeScreenViewModel>(
                create: (context) => HomeScreenViewModel(),
                child: const JobDetailScreen()));

      default:
        return PlainRoute(
            settings: settings,
            page: ChangeNotifierProvider<HomeScreenViewModel>(
                create: (context) => HomeScreenViewModel(),
                child: const HomeScreen()));
    }
  }
}
