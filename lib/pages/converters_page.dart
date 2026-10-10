import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/number_converter_page.dart';
import 'package:calculator/pages/power_converter_page.dart';
import 'package:calculator/pages/time_converter_page.dart';
import 'package:calculator/pages/speed_converter_page.dart';
import 'package:calculator/pages/area_converter_page.dart';
import 'package:calculator/pages/energy_converter_page.dart';
import 'package:calculator/pages/temperature_converter_page.dart';
import 'package:calculator/pages/mass_converter_page.dart';
import 'package:calculator/pages/length_converter_page.dart';
import 'package:calculator/pages/volume_converter_page.dart';
import 'package:calculator/pages/currency_converter_page.dart';
import 'package:calculator/pages/pressure_converter_page.dart';

@NowaGenerated({'auto-width': 388.0, 'auto-height': 852.0})
class ConvertersPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ConvertersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 396.0,
              left: 145.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NumberConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 396.0,
              left: 18.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PowerConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 272.0,
              left: 269.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TimeConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 272.0,
              left: 145.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SpeedConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 272.0,
              left: 18.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AreaConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 149.0,
              left: 269.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EnergyConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 149.0,
              left: 145.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TemperatureConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 149.0,
              left: 18.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MassConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 26.0,
              left: 269.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LengthConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 26.0,
              left: 145.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VolumeConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 402.0,
              left: 171.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.numbers_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 406.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.electric_bolt_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 282.0,
              left: 294.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.watch_later_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 282.0,
              left: 170.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.speed_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 282.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.grid_4x4_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 160.0,
              left: 294.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.local_fire_department_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 160.0,
              left: 170.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.thermostat_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 160.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.scale_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 36.0,
              left: 294.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.straighten_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 36.0,
              left: 170.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.view_in_ar_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 452.0,
              left: 153.0,
              width: 87.0,
              height: 44.0,
              child: Text(
                'Number Systems',
                style: TextStyle(fontSize: 20.0, height: 1.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 456.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Power',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 332.0,
              left: 276.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Time',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 332.0,
              left: 153.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Speed',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 332.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Area',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 210.0,
              left: 276.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Energy',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 210.0,
              left: 145.5,
              width: 100.0,
              height: 40.0,
              child: Text(
                'Temperature',
                style: TextStyle(
                  fontSize: 17.0,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 209.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Weight',
                style: TextStyle(fontSize: 20.0, letterSpacing: 0.25),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 86.0,
              left: 276.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Length',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 86.0,
              left: 153.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Volume',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 26.0,
              left: 18.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CurrencyConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 86.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text('Currency', style: TextStyle(fontSize: 20.0)),
            ),
            const Positioned(
              top: 36.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.currency_exchange_rounded, size: 40.0),
              ),
            ),
            Positioned(
              top: 396.0,
              left: 269.5,
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PressureConverterPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 456.0,
              left: 276.0,
              width: 87.0,
              height: 40.0,
              child: Text('Pressure', style: TextStyle(fontSize: 20.0)),
            ),
            const Positioned(
              top: 406.0,
              left: 294.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.compress_rounded, size: 40.0),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Converters', style: TextStyle(fontSize: 25.0)),
        centerTitle: false,
        leading: const Icon(Icons.keyboard_backspace_rounded, size: 35.0),
      ),
    );
  }
}
