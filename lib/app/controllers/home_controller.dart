import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeController {
  Set<CurrencyModel>? currencies;

  CurrencyModel? fromCurrency;
  CurrencyModel? toCurrency;

  final TextEditingController fromText;
  final TextEditingController toText;

  HomeController(this.fromText, this.toText) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies!.elementAt(0);
    toCurrency = currencies!.elementAt(1);
  }

  void convert() {
    double fromValue =
        double.tryParse(fromText.text.replaceAll(',', '.')) ?? 1.00;
    double returnValue = 0;

    if (toCurrency!.name == 'real') {
      returnValue = fromValue * fromCurrency!.real;
    } else if (toCurrency!.name == 'dolar') {
      returnValue = fromValue * fromCurrency!.dolar;
    } else if (toCurrency!.name == 'euro') {
      returnValue = fromValue * fromCurrency!.euro;
    } else if (toCurrency!.name == 'bitcoin') {
      returnValue = fromValue * fromCurrency!.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}
