// ignore_for_file: prefer_const_constructors
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:monkmaze_practical/routers/router_constants.dart';
import 'package:monkmaze_practical/view/friends_tab_screen.dart';
import 'package:monkmaze_practical/view/splash_screen.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: friendsTabScreen, page: () =>  FriendsTabScreen()),
    
  ];
}
