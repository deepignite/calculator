import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class TimeConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const TimeConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Time Converter',
      units: const [
        'Millisecond (ms)',
        'Second (s)',
        'Minute (min)',
        'Hour (h)',
        'Day (d)',
        'Week (wk)',
        'Year (yr)',
      ],
      defaultFromUnit: 'Hour (h)',
      defaultToUnit: 'Minute (min)',
      conversionType: UnitConversionType.time,
    );
  }
}
