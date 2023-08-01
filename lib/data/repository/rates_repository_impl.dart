import 'package:currency_rates/data/api/rest_client.dart';
import 'package:currency_rates/domain/model/currency_rate.dart';
import 'package:currency_rates/domain/repository/currency_rate_repository.dart';
import 'package:intl/intl.dart';

class RatesRepositoryImpl extends RatesRepository {
  final RestClient restClient;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  RatesRepositoryImpl({required this.restClient});

  @override
  Future<List<CurrencyRate>> getRates({required DateTime date}) =>
      restClient.getRates(date: dateFormat.format(date));
}
