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
      defaultFromUnit: 'INR (₹)',
      defaultToUnit: 'USD (\$)',
      asyncCustomConvert: (value, from, to) async {
        final double? amount = double.tryParse(value);
        if (amount == null) {
          return '0';
        }
        try {
          final fromCurrency = _currencies[from];
          final toCurrency = _currencies[to];
          if (fromCurrency == null || toCurrency == null) {
            return '0';
          }
          final double? converted = await CurrencyConverter.convert(
            from: fromCurrency,
            to: toCurrency,
            amount: amount,
          );
          if (converted == null) {
            return 'Unavailable';
          }
          if (converted.abs() >= 1000000000.0 ||
              (converted.abs() < 0.0001 && converted != 0)) {
            return converted.toStringAsExponential(4);
          }
          String str = converted.toStringAsFixed(4);
          if (str.contains('.')) {
            str = str.replaceAll(RegExp('0+\$'), '');
            if (str.endsWith('.')) {
              str = str.substring(0, str.length - 1);
            }
          }
          return str.isEmpty ? '0' : str;
        } catch (_) {
          return 'Unavailable';
        }
      },
    );
  }
}
