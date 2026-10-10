import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:currency_converter/currency_converter.dart';
import 'package:currency_converter/currency.dart';

@NowaGenerated()
class CurrencyConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CurrencyConverterPage({super.key});

  static const Map<String, Currency> _currencies = {
    'USD (\$)': Currency.usd,
    'EUR (€)': Currency.eur,
    'GBP (£)': Currency.gbp,
    'JPY (¥)': Currency.jpy,
    'INR (₹)': Currency.inr,
    'CAD (\$)': Currency.cad,
    'AUD (\$)': Currency.aud,
    'CNY (¥)': Currency.cny,
  };

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Currency Converter',
      units: _currencies.keys.toList(),
      defaultFromUnit: 'USD (\$)',
      defaultToUnit: 'EUR (€)',
      asyncCustomConvert: (value, from, to) async {
        final amount = double.tryParse(value);
        if (amount == null) {
          return '0';
        }
        final converted = await CurrencyConverter.convert(
          from: _currencies[from]!,
          to: _currencies[to]!,
          amount: amount,
        );
        return converted?.toString() ?? 'Unavailable';
      },
    );
  }
}
