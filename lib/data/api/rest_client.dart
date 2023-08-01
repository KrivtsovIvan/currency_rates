import 'package:currency_rates/domain/model/currency_rate.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://www.nbrb.by/api/exrates/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/rates")
  Future<List<CurrencyRate>> getRates({
    @Query('ondate') required String date,
    @Query('periodicity') int periodicity = 0,
  });
}
