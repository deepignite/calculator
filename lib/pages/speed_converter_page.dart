import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class SpeedConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const SpeedConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Speed Converter',
      units: const ['m/s', 'km/h', 'mph', 'Knot (kn)', 'ft/s'],
      defaultFromUnit: 'km/h',
      defaultToUnit: 'mph',
      conversionType: UnitConversionType.speed,
    );
  }
}
