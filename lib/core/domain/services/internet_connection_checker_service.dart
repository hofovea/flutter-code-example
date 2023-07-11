import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnectionCheckerService {
  static Stream<Future<bool>> get isConnected =>
      Connectivity().onConnectivityChanged.map(
        (ConnectivityResult result) async {
          if (result != ConnectivityResult.none) {
            return await InternetConnectionChecker().hasConnection;
          }
          return false;
        },
      );
}
