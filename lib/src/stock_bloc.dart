import 'dart:async';
import 'dart:collection';

import 'package:flutter_kata_stocktracker/src/stock_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class StocksBloc {
  final _stocksController = BehaviorSubject<List<stockModel>>();
  Stream<List<stockModel>> get stocks => _stocksController.stream;

  var _stocks = List<stockModel>();

  StocksBloc() {
    var s1 = stockModel();
    s1.stockName = "Google";
    s1.price = 123.0;
    _stocks.add(s1);
    _stocksController.add(_stocks);

    _getStock("AAPL").then((x) {
      _stocks.add(x);
      _stocksController.add(_stocks);
    });
  }

  Future<stockModel> _getStock(String id) async {
    final url =
        "https://api.iextrading.com/1.0/stock/$id/batch?types=quote&last=1";
    final reponse = await http.get(url);
    if (reponse.statusCode == 200) {
      var s = new stockModel();
      s.stockName = id;
      return s;
    }
    throw ("connection failed");
  }
}
