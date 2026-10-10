import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class MassConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MassConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Mass Converter',
      units: const [
        'Kilogram (kg)',
        'Gram (g)',
        'Milligram (mg)',
        'Metric Ton (t)',
        'Pound (lb)',
        'Ounce (oz)',
      ],
      defaultFromUnit: 'Kilogram (kg)',
      defaultToUnit: 'Pound (lb)',
      conversionType: UnitConversionType.mass,
    );
  }
}
