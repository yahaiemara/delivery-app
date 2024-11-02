import 'package:deliveryapp/core/constant/routes.dart';

import 'package:deliveryapp/view/screen/auth/homepage/homepage.dart';
import 'package:deliveryapp/view/screen/auth/homepage/homescreen.dart';

import 'package:deliveryapp/view/screen/auth/login.dart';
import 'package:deliveryapp/view/screen/order/accepted.dart';

import 'package:deliveryapp/view/screen/order/archive.dart';
import 'package:deliveryapp/view/screen/order/orderdetails.dart';
import 'package:deliveryapp/view/screen/order/pending.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
// ignore: depend_on_referenced_packages

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Login()),
  GetPage(name: AppRoute.homescreen, page: () => const Homescreen()),
  GetPage(name: AppRoute.home, page: () => const Homepage()),
  GetPage(name: AppRoute.pending, page: () => const PendingDelivery()),
  GetPage(name: AppRoute.archive, page: () => const Archive()),
  GetPage(name: AppRoute.accpteddelivery, page: ()=> const AcceptedDelivery()),
  GetPage(name: AppRoute.orderdetails, page: ()=>const Orderdetails())
];
