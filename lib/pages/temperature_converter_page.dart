import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class TemperatureConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const TemperatureConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Temperature Converter',
      units: const ['Celsius (°C)', 'Fahrenheit (°F)', 'Kelvin (K)'],
      defaultFromUnit: 'Celsius (°C)',
      defaultToUnit: 'Fahrenheit (°F)',
      conversionType: UnitConversionType.temperature,
    );
  }
}
