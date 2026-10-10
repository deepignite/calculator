import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class LengthConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LengthConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Length Converter',
      units: const [
        'Meter (m)',
        'Kilometer (km)',
        'Centimeter (cm)',
        'Millimeter (mm)',
        'Mile (mi)',
        'Yard (yd)',
        'Foot (ft)',
        'Inch (in)',
      ],
      defaultFromUnit: 'Meter (m)',
      defaultToUnit: 'Foot (ft)',
      conversionType: UnitConversionType.length,
    );
  }
}
