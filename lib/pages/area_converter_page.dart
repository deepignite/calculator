import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class AreaConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const AreaConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Area Converter',
      units: const [
        'Square Meter (m²)',
        'Square Kilometer (km²)',
        'Hectare (ha)',
        'Acre (ac)',
        'Square Mile (mi²)',
        'Square Yard (yd²)',
        'Square Foot (ft²)',
        'Square Inch (in²)',
        'Square Centimeter (cm²)',
      ],
      defaultFromUnit: 'Square Meter (m²)',
      defaultToUnit: 'Square Foot (ft²)',
      conversionType: UnitConversionType.area,
    );
  }
}
