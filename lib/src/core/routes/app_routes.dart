part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Path.HOME;
  static const COUNTER = _Path.COUNTER;
  static const PRODUCTS = _Path.PRODUCTS;
  static const PROFILE = _Path.PROFILE;
}

abstract class _Path {
  static const HOME = "/";
  static const COUNTER = "/counter";
  static const PRODUCTS = "/products";
  static const PROFILE = "/profile";
}
