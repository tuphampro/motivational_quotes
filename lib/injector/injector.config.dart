// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:motivational_quotes/data/network/base.dart' as _i3;
import 'package:motivational_quotes/data/repository/quotes.dart' as _i5;

import '../data/network/base.dart' as _i7;
import '../data/repository/quotes.dart' as _i8;
import 'register_module.dart' as _i6;

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
  gh.singleton<_i4.InternetConnectionChecker>(registerModule.connectionChecker);
  gh.factory<_i5.SpinFreeMasterRepository>(
      () => registerModule.spinFreeMasterRepository);
  return getIt;
}

class _$RegisterModule extends _i6.RegisterModule {
  @override
  _i4.InternetConnectionChecker get connectionChecker =>
      _i4.InternetConnectionChecker();
  @override
  _i7.ApiGatewayBase get spinFreeMasterApi => _i7.ApiGatewayBase();
  @override
  _i8.SpinFreeMasterRepository get spinFreeMasterRepository =>
      _i8.SpinFreeMasterRepository();
}
