import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/globals/unit_conversion.dart';

@NowaGenerated()
class UnitConverterView extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const UnitConverterView({
    super.key,
    required this.title,
    required this.units,
    required this.defaultFromUnit,
    required this.defaultToUnit,
    this.conversionType,
    this.convert,
    this.customConvert,
  });

  final String title;

  final List<String> units;

  final String defaultFromUnit;

  final String defaultToUnit;

  final UnitConversionType? conversionType;

  final double Function(double value, String from, String to)? convert;

  final String Function(String value, String from, String to)? customConvert;

  @override
  State<UnitConverterView> createState() {
    return _UnitConverterViewState();
  }
}

@NowaGenerated()
class _UnitConverterViewState extends State<UnitConverterView> {
  String _inputText = '1';

  late String _fromUnit;

  late String _toUnit;

  String get _outputResult {
    if (widget.customConvert != null) {
      return widget.customConvert!(_inputText, _fromUnit, _toUnit);
    }
    if (widget.convert != null || widget.conversionType != null) {
      final double? val = double.tryParse(_inputText);
      if (val == null) {
        return '0';
      }
      final double result = widget.convert != null
          ? widget.convert!(val, _fromUnit, _toUnit)
          : convertPackageUnit(widget.conversionType!, val, _fromUnit, _toUnit);
      if (result.isNaN || result.isInfinite) {
        return 'Error';
      }
      if (result.abs() >= 1000000000.0 ||
          (result.abs() < 0.0001 && result != 0)) {
        return result.toStringAsExponential(4);
      }
      String str = result.toStringAsFixed(6);
      if (str.contains('.')) {
        str = str.replaceAll(RegExp('0+\$'), '');
        if (str.endsWith('.')) {
          str = str.substring(0, str.length - 1);
        }
      }
      return str.isEmpty ? '0' : str;
    }
    return _inputText;
  }

  @override
  void initState() {
    super.initState();
    _fromUnit = widget.defaultFromUnit;
    _toUnit = widget.defaultToUnit;
  }

  void _onKeyPressed(String key) {
    setState(() {
      if (key == 'AC') {
        _inputText = '0';
      } else if (key == 'backspace') {
        if (_inputText.length > 1) {
          _inputText = _inputText.substring(0, _inputText.length - 1);
        } else {
          _inputText = '0';
        }
      } else if (key == '.') {
        if (!_inputText.contains('.')) {
          _inputText += '.';
        }
      } else if (key == '%') {
        final double? val = double.tryParse(_inputText);
        if (val != null) {
          final double res = val / 100.0;
          String str = res.toString();
          if (str.endsWith('.0')) {
            str = str.substring(0, str.length - 2);
          }
          _inputText = str;
        }
      } else if (key == '±') {
        if (_inputText != '0') {
          _inputText = _inputText.startsWith('-')
              ? _inputText.substring(1)
              : '-$_inputText';
        }
      } else if (RegExp('^[0-9]\$').hasMatch(key)) {
        if (_inputText == '0') {
          _inputText = key;
        } else if (_inputText.length < 15) {
          _inputText += key;
        }
      } else if (key == '=') {}
    });
  }

  Widget _buildCalcButton({
    required BuildContext context,
    required String label,
    Widget? icon,
    double fontSize = 40.0,
    FontWeight fontWeight = FontWeight.normal,
    Color? textColor,
    required void Function() onPressed,
  }) {
    return Expanded(
      child: SizedBox(
        height: 62.0,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll<Color?>(
              Color(0x431F00FF),
            ),
            foregroundColor: WidgetStatePropertyAll<Color?>(
              Theme.of(context).colorScheme.primary,
            ),
            shadowColor: const WidgetStatePropertyAll<Color?>(null),
            elevation: const WidgetStatePropertyAll<double?>(0.0),
            side: const WidgetStatePropertyAll<BorderSide?>(null),
            padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.zero,
            ),
            shape: const WidgetStatePropertyAll<RoundedRectangleBorder?>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60.0)),
              ),
            ),
          ),
          child:
              icon ??
              Text(
                label,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: fontSize,
                  color: textColor ?? Theme.of(context).colorScheme.shadow,
                  height: fontSize > 30 ? -0.2 : null,
                  fontWeight: fontWeight,
                ),
              ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withValues(alpha: 0.5),
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6.0,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _fromUnit,
                            icon: const Icon(Icons.arrow_drop_down_rounded),
                            borderRadius: BorderRadius.circular(12.0),
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            items: widget.units
                                .map(
                                  (unit) => DropdownMenuItem<String>(
                                    value: unit,
                                    child: Text(unit),
                                  ),
                                )
                                .toList(),
                            onChanged: (val) {
                              if (val != null) {
                                setState(() => _fromUnit = val!);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Text(
                      _inputText,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Center(
                child: IconButton.filledTonal(
                  onPressed: () {
                    setState(() {
                      final String temp = _fromUnit;
                      _fromUnit = _toUnit;
                      _toUnit = temp;
                    });
                  },
                  icon: const Icon(Icons.swap_vert_rounded, size: 22.0),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.3),
                    width: 1.5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6.0,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'To',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _toUnit,
                            icon: const Icon(Icons.arrow_drop_down_rounded),
                            borderRadius: BorderRadius.circular(12.0),
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            items: widget.units
                                .map(
                                  (unit) => DropdownMenuItem<String>(
                                    value: unit,
                                    child: Text(unit),
                                  ),
                                )
                                .toList(),
                            onChanged: (val) {
                              if (val != null) {
                                setState(() => _toUnit = val!);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Text(
                      _outputResult,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                spacing: 10.0,
                children: [
                  Row(
                    spacing: 10.0,
                    children: [
                      _buildCalcButton(
                        context: context,
                        label: 'AC',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('AC'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '±',
                        fontSize: 33.0,
                        fontWeight: FontWeight.w600,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('±'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '%',
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('%'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '⌫',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () => _onKeyPressed('backspace'),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.0,
                    children: [
                      _buildCalcButton(
                        context: context,
                        label: '7',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('7'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '8',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('8'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '9',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('9'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '·',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.0,
                    children: [
                      _buildCalcButton(
                        context: context,
                        label: '4',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('4'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '5',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('5'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '6',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('6'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: ' ',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.0,
                    children: [
                      _buildCalcButton(
                        context: context,
                        label: '1',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('1'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '2',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('2'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '3',
                        fontSize: 40.0,
                        textColor: Theme.of(context).colorScheme.shadow,
                        onPressed: () => _onKeyPressed('3'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: ' ',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10.0,
                    children: [
                      _buildCalcButton(
                        context: context,
                        label: '0',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () => _onKeyPressed('0'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: '.',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () => _onKeyPressed('.'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: 'backspace',
                        icon: const Icon(
                          Icons.backspace_outlined,
                          color: Color(0xFF000000),
                          size: 32.0,
                        ),
                        onPressed: () => _onKeyPressed('backspace'),
                      ),
                      _buildCalcButton(
                        context: context,
                        label: ' ',
                        fontSize: 40.0,
                        textColor: const Color(0xFF000000),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
