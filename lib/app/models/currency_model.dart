class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static Set<CurrencyModel> getCurrencies() {
    return <CurrencyModel>{
      CurrencyModel(
          name: 'real', real: 1.00, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      CurrencyModel(
          name: 'dolar',
          real: 5.65,
          dolar: 1.00,
          euro: 0.85,
          bitcoin: 0.000088),
      CurrencyModel(
          name: 'euro', real: 6.62, dolar: 1.17, euro: 1.00, bitcoin: 0.00010),
      CurrencyModel(
          name: 'bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1.00),
    };
  }
}
