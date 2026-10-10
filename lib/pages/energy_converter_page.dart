import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class EnergyConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const EnergyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Energy Converter',
      units: const [
        'Joule (J)',
        'Kilojoule (kJ)',
        'Calorie (cal)',
        'Kilocalorie (kcal)',
        'Watt-hour (Wh)',
        'Kilowatt-hour (kWh)',
      ],
      defaultFromUnit: 'Kilojoule (kJ)',
      defaultToUnit: 'Calorie (cal)',
      conversionType: UnitConversionType.energy,
    );
  }
}
