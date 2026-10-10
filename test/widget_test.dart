import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/globals/unit_conversion.dart';
import 'package:calculator/main.dart';

void main() {
  testWidgets('calculator evaluates expressions and opens converters', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(393, 852);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    await tester.tap(find.widgetWithText(ElevatedButton, '2'));
    await tester.tap(find.widgetWithText(ElevatedButton, '+'));
    await tester.tap(find.widgetWithText(ElevatedButton, '3'));
    await tester.tap(find.widgetWithText(ElevatedButton, '='));
    await tester.pumpAndSettle();

    expect(
      tester.widget<Text>(find.byKey(const ValueKey('calculator-result'))).data,
      '5',
    );

    await tester.tap(find.byTooltip('Converters'));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(InkWell).at(8));
    await tester.pumpAndSettle();

    expect(find.text('Length Converter'), findsOneWidget);
    expect(find.text('3.28084'), findsOneWidget);
  });

  test('units_converter handles scale and offset conversions', () {
    expect(
      convertPackageUnit(
        UnitConversionType.length,
        1,
        'Meter (m)',
        'Foot (ft)',
      ),
      closeTo(3.28084, 0.00001),
    );
    expect(
      convertPackageUnit(
        UnitConversionType.temperature,
        0,
        'Celsius (°C)',
        'Fahrenheit (°F)',
      ),
      closeTo(32, 0.00001),
    );
  });
}
