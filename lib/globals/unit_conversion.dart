import 'package:units_converter/units_converter.dart';

enum UnitConversionType {
  area,
  energy,
  length,
  mass,
  power,
  pressure,
  speed,
  temperature,
  time,
  volume,
}

const Map<String, AREA> _areaUnits = {
  'Square Meter (m²)': AREA.squareMeters,
  'Square Kilometer (km²)': AREA.squareKilometers,
  'Hectare (ha)': AREA.hectares,
  'Acre (ac)': AREA.acres,
  'Square Mile (mi²)': AREA.squareMiles,
  'Square Yard (yd²)': AREA.squareYard,
  'Square Foot (ft²)': AREA.squareFeet,
  'Square Inch (in²)': AREA.squareInches,
  'Square Centimeter (cm²)': AREA.squareCentimeters,
};

const Map<String, ENERGY> _energyUnits = {
  'Joule (J)': ENERGY.joules,
  'Kilojoule (kJ)': ENERGY.kilojoules,
  'Calorie (cal)': ENERGY.calories,
  'Kilocalorie (kcal)': ENERGY.kilocalories,
  'Watt-hour (Wh)': ENERGY.wattHours,
  'Kilowatt-hour (kWh)': ENERGY.kilowattHours,
};

const Map<String, LENGTH> _lengthUnits = {
  'Meter (m)': LENGTH.meters,
  'Kilometer (km)': LENGTH.kilometers,
  'Centimeter (cm)': LENGTH.centimeters,
  'Millimeter (mm)': LENGTH.millimeters,
  'Mile (mi)': LENGTH.miles,
  'Yard (yd)': LENGTH.yards,
  'Foot (ft)': LENGTH.feet,
  'Inch (in)': LENGTH.inches,
};

const Map<String, MASS> _massUnits = {
  'Kilogram (kg)': MASS.kilograms,
  'Gram (g)': MASS.grams,
  'Milligram (mg)': MASS.milligrams,
  'Metric Ton (t)': MASS.tonnes,
  'Pound (lb)': MASS.pounds,
  'Ounce (oz)': MASS.ounces,
};

const Map<String, POWER> _powerUnits = {
  'Watt (W)': POWER.watt,
  'Kilowatt (kW)': POWER.kilowatt,
  'Megawatt (MW)': POWER.megawatt,
  'Horsepower (hp)': POWER.imperialHorsePower,
};

const Map<String, PRESSURE> _pressureUnits = {
  'Pascal (Pa)': PRESSURE.pascal,
  'Kilopascal (kPa)': PRESSURE.kiloPascal,
  'Bar (bar)': PRESSURE.bar,
  'Atmosphere (atm)': PRESSURE.atmosphere,
  'PSI (psi)': PRESSURE.psi,
  'mmHg (Torr)': PRESSURE.torr,
};

const Map<String, SPEED> _speedUnits = {
  'm/s': SPEED.metersPerSecond,
  'km/h': SPEED.kilometersPerHour,
  'mph': SPEED.milesPerHour,
  'Knot (kn)': SPEED.knots,
  'ft/s': SPEED.feetsPerSecond,
};

const Map<String, TEMPERATURE> _temperatureUnits = {
  'Celsius (°C)': TEMPERATURE.celsius,
  'Fahrenheit (°F)': TEMPERATURE.fahrenheit,
  'Kelvin (K)': TEMPERATURE.kelvin,
};

const Map<String, TIME> _timeUnits = {
  'Millisecond (ms)': TIME.milliseconds,
  'Second (s)': TIME.seconds,
  'Minute (min)': TIME.minutes,
  'Hour (h)': TIME.hours,
  'Day (d)': TIME.days,
  'Week (wk)': TIME.weeks,
  'Year (yr)': TIME.years365,
};

const Map<String, VOLUME> _volumeUnits = {
  'Liter (L)': VOLUME.liters,
  'Milliliter (mL)': VOLUME.milliliters,
  'Gallon (gal)': VOLUME.usGallons,
  'Quart (qt)': VOLUME.usQuarts,
  'Pint (pt)': VOLUME.usPints,
  'Cup': VOLUME.usCups,
  'Fluid Ounce (fl oz)': VOLUME.usFluidOunces,
  'Cubic Meter (m³)': VOLUME.cubicMeters,
};

double convertPackageUnit(
  UnitConversionType type,
  double value,
  String from,
  String to,
) {
  switch (type) {
    case UnitConversionType.area:
      final conversion = Area();
      conversion.convert(_areaUnits[from]!, value);
      return conversion.getUnit(_areaUnits[to]!).value!;
    case UnitConversionType.energy:
      final conversion = Energy();
      conversion.convert(_energyUnits[from]!, value);
      return conversion.getUnit(_energyUnits[to]!).value!;
    case UnitConversionType.length:
      final conversion = Length();
      conversion.convert(_lengthUnits[from]!, value);
      return conversion.getUnit(_lengthUnits[to]!).value!;
    case UnitConversionType.mass:
      final conversion = Mass();
      conversion.convert(_massUnits[from]!, value);
      return conversion.getUnit(_massUnits[to]!).value!;
    case UnitConversionType.power:
      final conversion = Power();
      conversion.convert(_powerUnits[from]!, value);
      return conversion.getUnit(_powerUnits[to]!).value!;
    case UnitConversionType.pressure:
      final conversion = Pressure();
      conversion.convert(_pressureUnits[from]!, value);
      return conversion.getUnit(_pressureUnits[to]!).value!;
    case UnitConversionType.speed:
      final conversion = Speed();
      conversion.convert(_speedUnits[from]!, value);
      return conversion.getUnit(_speedUnits[to]!).value!;
    case UnitConversionType.temperature:
      final conversion = Temperature();
      conversion.convert(_temperatureUnits[from]!, value);
      return conversion.getUnit(_temperatureUnits[to]!).value!;
    case UnitConversionType.time:
      final conversion = Time();
      conversion.convert(_timeUnits[from]!, value);
      return conversion.getUnit(_timeUnits[to]!).value!;
    case UnitConversionType.volume:
      final conversion = Volume();
      conversion.convert(_volumeUnits[from]!, value);
      return conversion.getUnit(_volumeUnits[to]!).value!;
  }
}
