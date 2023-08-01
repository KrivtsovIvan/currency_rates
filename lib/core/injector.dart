import 'package:currency_rates/data/api/rest_client.dart';
import 'package:currency_rates/data/repository/rates_repository_impl.dart';
import 'package:currency_rates/data/repository/settings_repository_impl.dart';
import 'package:currency_rates/domain/bloc/rates/rates_bloc.dart';
import 'package:currency_rates/domain/bloc/settings/settings_bloc.dart';
import 'package:currency_rates/domain/bloc/settings/settings_states.dart';
import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/domain/model/currency_setting.dart';
import 'package:currency_rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/domain/repository/settings_repository.dart';
import 'package:currency_rates/domain/use_case/get_rates.dart';
import 'package:currency_rates/domain/use_case/save_settings.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

T inject<T extends Object>({dynamic param}) =>
    Injector.getIt.get<T>(param1: param);

class Injector {
  static GetIt get getIt => GetIt.instance;

  static Future initialize() async {
    //Network
    final dio = Dio();
    dio.interceptors.addAll(
      [
        LogInterceptor(responseBody: true),
      ],
    );

    getIt.registerSingleton(dio);
    getIt.registerSingleton(RestClient(inject()));

    //Repositories
    getIt.registerSingletonAsync<SettingsRepository>(() async {
      Hive.init((await getApplicationDocumentsDirectory()).path);
      Hive.registerAdapter(CurrencySettingAdapter());

      final box = await Hive.openBox<CurrencySetting>('currencies');

      if (box.isEmpty) {
        await box.putAll(
          {
            431: CurrencySetting(
              id: 431,
              visible: true,
              order: double.infinity,
            ),
            451: CurrencySetting(
              id: 451,
              visible: true,
              order: double.infinity,
            ),
            456: CurrencySetting(
              id: 456,
              visible: true,
              order: double.infinity,
            ),
          },
        );
      }

      return SettingsRepositoryImpl(box: box);
    });

    getIt.registerSingleton<RatesRepository>(
      RatesRepositoryImpl(restClient: inject()),
    );

    //Use cases
    getIt.registerSingletonWithDependencies<GetRates>(
      () => GetRates(
        currencyRateRepository: inject(),
        settingsRepository: inject(),
      ),
      dependsOn: [SettingsRepository],
    );

    getIt.registerSingletonWithDependencies<SaveSettings>(
      () => SaveSettings(
        settingsRepository: inject(),
      ),
      dependsOn: [SettingsRepository],
    );

    //Blocs
    getIt.registerFactory<RatesBloc>(
      () => RatesBloc(getRates: inject()),
    );

    getIt.registerFactoryParam<SettingsBloc, List<Currency>, void>(
      (currencies, _) => SettingsBloc(
        SettingsLoaded(currencies),
        saveSettings: inject(),
      ),
    );

    return getIt.allReady();
  }
}
