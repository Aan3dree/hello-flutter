import 'package:http/http.dart' as http;
import 'dart:convert';
import 'key.dart';

const coinApiDomain = 'https://rest.coinapi.io/v1/exchangerate/';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  void getCoinData() async {
    var url = Uri.parse('${coinApiDomain}BTC/USD?apikey=${apiKey}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  Future<String> getBtcCoinCurency(String? coin) async {
    var url = Uri.parse('${coinApiDomain}BTC/${coin}?apikey=${apiKey}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      double curency = data["rate"];
      return curency.toStringAsFixed(2);
      //print(response.body);
    } else {
      print(response.statusCode);
      return 'err';
    }
  }

  Future<String> getEthCoinCurency(String? coin) async {
    var url = Uri.parse('${coinApiDomain}ETH/${coin}?apikey=${apiKey}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      double curency = data["rate"];
      return curency.toStringAsFixed(2);
      //print(response.body);
    } else {
      print(response.statusCode);
      return 'err';
    }
  }

  Future<String> getLtcCoinCurency(String? coin) async {
    var url = Uri.parse('${coinApiDomain}LTC/${coin}?apikey=${apiKey}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      double curency = data["rate"];
      return curency.toStringAsFixed(2);
      //print(response.body);
    } else {
      print(response.statusCode);
      return 'err';
    }
  }
}
