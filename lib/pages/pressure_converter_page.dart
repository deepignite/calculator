import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class PressureConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const PressureConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Pressure Converter',
      units: const [
        'Pascal (Pa)',
        'Kilopascal (kPa)',
        'Bar (bar)',
        'Atmosphere (atm)',
        'PSI (psi)',
        'mmHg (Torr)',
      ],
      defaultFromUnit: 'Bar (bar)',
      defaultToUnit: 'PSI (psi)',
      conversionType: UnitConversionType.pressure,
    );
  }
}
