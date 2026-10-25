import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:calculator/pages/number_converter_page.dart';
import 'package:calculator/pages/power_converter_page.dart';
import 'package:calculator/pages/speed_converter_page.dart';
import 'package:calculator/pages/area_converter_page.dart';
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
              top: 322.0,
              left: 262.0,
              width: 115.0,
              height: 133.0,
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
              top: 472.0,
              left: 8.0,
              width: 115.0,
              height: 133.0,
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
              top: 322.0,
              left: 137.5,
              width: 115.0,
              height: 133.0,
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
              top: 322.0,
              left: 10.5,
              width: 115.0,
              height: 133.0,
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
              top: 174.5,
              left: 137.5,
              width: 115.0,
              height: 133.0,
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
              top: 174.5,
              left: 10.5,
              width: 115.0,
              height: 133.0,
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
              left: 261.5,
              width: 115.0,
              height: 133.0,
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
              left: 137.5,
              width: 115.0,
              height: 133.0,
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
              top: 496.0,
              left: 41.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.electric_bolt_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 341.5,
              left: 295.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.numbers_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 341.5,
              left: 169.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.speed_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 341.5,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.grid_4x4_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 193.0,
              left: 169.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.thermostat_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 48.0,
              left: 294.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.straighten_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 48.0,
              left: 170.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.view_in_ar_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 546.0,
              left: 22.5,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Power',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 391.5,
              left: 153.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Speed',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 391.0,
              left: 275.5,
              width: 87.0,
              height: 64.0,
              child: Text(
                'Number System',
                style: TextStyle(fontSize: 20.0, height: 1.2),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 391.5,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Area',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 242.0,
              left: 145.5,
              width: 100.0,
              height: 65.5,
              child: Text(
                'Temperature',
                style: TextStyle(
                  fontSize: 17.0,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w600,
                  height: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 98.0,
              left: 276.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Length',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 98.0,
              left: 153.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Volume',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 26.0,
              left: 10.5,
              width: 115.0,
              height: 133.0,
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
              top: 98.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Currency',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 48.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.currency_exchange_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 193.0,
              left: 43.5,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.scale_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 242.0,
              left: 25.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Weight',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 0.25,
                  height: 2.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 174.5,
              left: 262.0,
              width: 115.0,
              height: 133.0,
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
              top: 198.5,
              left: 295.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(
                child: Icon(Icons.compress_rounded, size: 40.0),
              ),
            ),
            const Positioned(
              top: 248.5,
              left: 276.5,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Pressure',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 472.0,
              left: 139.0,
              width: 115.0,
              height: 133.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddConverterPage(),),);
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
              top: 496.0,
              left: 169.0,
              width: 50.0,
              height: 50.0,
              child: IgnorePointer(child: Icon(Icons.add_rounded, size: 40.0)),
            ),
            const Positioned(
              top: 546.0,
              left: 153.0,
              width: 87.0,
              height: 40.0,
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20.0, height: 2.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Converters', style: TextStyle(fontSize: 25.0)),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
