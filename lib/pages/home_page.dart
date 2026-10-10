import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/converters_page.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 852.0})
class HomePage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _expression = '0';
  String _result = '0';
  bool _justEvaluated = false;

  void _press(String key) {
    setState(() {
      if (key == 'AC') {
        _expression = '0';
        _result = '0';
        _justEvaluated = false;
        return;
      }
      if (key == 'backspace') {
        if (_justEvaluated || _expression.length <= 1) {
          _expression = '0';
        } else {
          _expression = _expression.substring(0, _expression.length - 1);
        }
        _justEvaluated = false;
        _evaluatePreview();
        return;
      }
      if (key == '=') {
        _evaluate();
        return;
      }
      if (key == '%') {
        _expression = _expression.replaceFirstMapped(
          RegExp(r'(\d+\.?\d*)$'),
          (match) => '(${match[0]}/100)',
        );
        _justEvaluated = false;
        _evaluatePreview();
        return;
      }
      if (key == '±') {
        final value = double.tryParse(_expression);
        if (value != null) {
          _expression = (-value).toString();
          _evaluatePreview();
        }
        _justEvaluated = false;
        return;
      }

      final isOperator = const ['÷', '×', '−', '+'].contains(key);
      if (_justEvaluated && !isOperator) {
        _expression = key == '.' ? '0.' : key;
      } else if (key == '.') {
        final lastOperand = _expression.split(RegExp(r'[+\-*/]')).last;
        if (!lastOperand.contains('.')) {
          _expression += lastOperand.isEmpty ? '0.' : '.';
        }
      } else if (isOperator) {
        final operator = switch (key) {
          '÷' => '/',
          '×' => '*',
          '−' => '-',
          _ => key,
        };
        if (_expression == '0' && operator != '-') {
          return;
        }
        if (RegExp(r'[+\-*/]$').hasMatch(_expression)) {
          _expression = _expression.substring(0, _expression.length - 1);
        }
        _expression += operator;
      } else if (RegExp(r'^\d$').hasMatch(key)) {
        if (_expression == '0' || _justEvaluated) {
          _expression = key;
        } else {
          _expression += key;
        }
      }
      _justEvaluated = false;
      _evaluatePreview();
    });
  }

  void _evaluatePreview() {
    try {
      final value = Parser()
          .parse(_expression)
          .evaluate(EvaluationType.REAL, ContextModel());
      if (value.isFinite) {
        _result = _format(value);
      }
    } catch (_) {
      _result = '0';
    }
  }

  void _evaluate() {
    _evaluatePreview();
    _expression = _result;
    _justEvaluated = true;
  }

  String _format(double value) {
    if (value.abs() >= 1000000000 || (value.abs() < 0.0001 && value != 0)) {
      return value.toStringAsExponential(4);
    }
    return value.toStringAsFixed(6).replaceFirst(RegExp(r'\.?0+$'), '');
  }

  void _openConverters() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ConvertersPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final keys = [
      'AC',
      'backspace',
      '%',
      '÷',
      '7',
      '8',
      '9',
      '×',
      '4',
      '5',
      '6',
      '−',
      '1',
      '2',
      '3',
      '+',
      '±',
      '0',
      '.',
      '=',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        actions: [
          IconButton(
            tooltip: 'Converters',
            onPressed: _openConverters,
            icon: const Icon(Icons.swap_horiz_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _expression,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        _result,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: 5,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: keys.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final key = keys[index];
                    final isOperator = const [
                      '÷',
                      '×',
                      '−',
                      '+',
                      '=',
                    ].contains(key);
                    return ElevatedButton(
                      onPressed: () => _press(key),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isOperator
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(
                                context,
                              ).colorScheme.surfaceContainerHighest,
                        foregroundColor: Theme.of(
                          context,
                        ).colorScheme.onSurface,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: key == 'backspace'
                          ? const Icon(Icons.backspace_outlined)
                          : Text(key, style: const TextStyle(fontSize: 24)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
