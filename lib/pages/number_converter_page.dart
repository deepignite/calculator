import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/unit_converter_view.dart';
import 'package:units_converter/units_converter.dart';

@NowaGenerated()
class NumberConverterPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const NumberConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return UnitConverterView(
      title: 'Number Systems',
      units: const [
        'Decimal (Dec)',
        'Binary (Bin)',
        'Hexadecimal (Hex)',
        'Octal (Oct)',
      ],
      defaultFromUnit: 'Decimal (Dec)',
      defaultToUnit: 'Binary (Bin)',
      customConvert: (value, from, to) {
        final cleanValue = value.split('.').first;
        if (cleanValue.isEmpty) {
          return '0';
        }
        final fromSystem = switch (from) {
          'Binary (Bin)' => NUMERAL_SYSTEMS.binary,
          'Hexadecimal (Hex)' => NUMERAL_SYSTEMS.hexadecimal,
          'Octal (Oct)' => NUMERAL_SYSTEMS.octal,
          _ => NUMERAL_SYSTEMS.decimal,
        };
        final toSystem = switch (to) {
          'Binary (Bin)' => NUMERAL_SYSTEMS.binary,
          'Hexadecimal (Hex)' => NUMERAL_SYSTEMS.hexadecimal,
          'Octal (Oct)' => NUMERAL_SYSTEMS.octal,
          _ => NUMERAL_SYSTEMS.decimal,
        };
        try {
          final systems = NumeralSystems()..convert(fromSystem, cleanValue);
          final result = systems.getUnit(toSystem).stringValue ?? '0';
          return toSystem == NUMERAL_SYSTEMS.hexadecimal
              ? result.toUpperCase()
              : result;
        } catch (_) {
          return 'Error';
        }
      },
    );
  }
}
