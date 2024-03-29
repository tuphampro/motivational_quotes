import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:motivational_quotes/data/network/base.dart';
import 'package:motivational_quotes/data/repository/category.dart';

import '../data/repository/quotes.dart';

@module
abstract class RegisterModule {
  @singleton
  InternetConnectionChecker get connectionChecker;

  @injectable
  ApiGatewayBase get spinFreeMasterApi;

  @injectable
  QuotesRepository get quotesRepository;

  @injectable
  CategoryRepository get categoryRepository;
}
