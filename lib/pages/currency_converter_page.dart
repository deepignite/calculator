import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';

@NowaGenerated()
class CurrencyConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CurrencyConverterPage({super.key});

  static const Map<String, double> _toUsd = {
    'USD (\$)': 1.0,
    'EUR (€)': 1.08,
    'GBP (£)': 1.27,
    'JPY (¥)': 0.0065,
    'INR (₹)': 0.012,
    'CAD (\$)': 0.73,
    'AUD (\$)': 0.65,
    'CNY (¥)': 0.138,
  };

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Currency Converter',
      units: _toUsd.keys.toList(),
      defaultFromUnit: 'USD (\$)',
      defaultToUnit: 'EUR (€)',
      convert: (value, from, to) {
        final double usd = value * (_toUsd[from] ?? 1.0);
        return usd / (_toUsd[to] ?? 1.0);
      },
    );
  }
}
