import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 30, left: 30),
          child: Column(
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(height: 30),
              CurrencyBox(),
              SizedBox(height: 10),
              CurrencyBox(),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
                onPressed: () {},
                child: Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
