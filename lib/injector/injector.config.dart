// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:motivational_quotes/data/network/base.dart' as _i3;
import 'package:motivational_quotes/data/repository/category.dart' as _i4;
import 'package:motivational_quotes/data/repository/quotes.dart' as _i6;

import '../data/network/base.dart' as _i8;
import '../data/repository/category.dart' as _i10;
import '../data/repository/quotes.dart' as _i9;
import 'register_module.dart' as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ApiGatewayBase>(() => registerModule.spinFreeMasterApi);
  gh.factory<_i4.CategoryRepository>(() => registerModule.categoryRepository);
  gh.singleton<_i5.InternetConnectionChecker>(registerModule.connectionChecker);
  gh.factory<_i6.QuotesRepository>(() => registerModule.quotesRepository);
  return getIt;
}

class _$RegisterModule extends _i7.RegisterModule {
  @override
  _i5.InternetConnectionChecker get connectionChecker =>
      _i5.InternetConnectionChecker();
  @override
  _i8.ApiGatewayBase get spinFreeMasterApi => _i8.ApiGatewayBase();
  @override
  _i9.QuotesRepository get quotesRepository => _i9.QuotesRepository();
  @override
  _i10.CategoryRepository get categoryRepository => _i10.CategoryRepository();
}
