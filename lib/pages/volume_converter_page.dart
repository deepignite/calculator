import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class VolumeConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const VolumeConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Volume Converter',
      units: const [
        'Liter (L)',
        'Milliliter (mL)',
        'Gallon (gal)',
        'Quart (qt)',
        'Pint (pt)',
        'Cup',
        'Fluid Ounce (fl oz)',
        'Cubic Meter (m³)',
      ],
      defaultFromUnit: 'Liter (L)',
      defaultToUnit: 'Gallon (gal)',
      conversionType: UnitConversionType.volume,
    );
  }
}
