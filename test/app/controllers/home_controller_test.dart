import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homeController = HomeController(fromText, toText);

  test('Real para Dolar', () {
    fromText.text = '5.65';
    homeController.convert();
    expect(toText.text, '1.02');
  });

  test('Dolar para Real', () {
    fromText.text = '1.00';
    homeController.fromCurrency = CurrencyModel(
        name: 'dolar', real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088);
    homeController.toCurrency = CurrencyModel(
        name: 'real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
    homeController.convert();
    expect(toText.text, '5.65');
  });
}
