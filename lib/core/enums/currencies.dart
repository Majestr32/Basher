enum Currencies{
  usd('\$','USD'),
  euro('€','EUR'),
  britishPound('£','GBP');

  final String currencySign;
  final String shortName;

  String get full => "$shortName ($currencySign)";

  const Currencies(this.currencySign, this.shortName);

  static Currencies fromCurrencySign(String currencySign) => Currencies.values.firstWhere((element) => element.currencySign == currencySign, orElse: () => Currencies.usd);
}