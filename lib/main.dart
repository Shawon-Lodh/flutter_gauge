import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: SfRadialGauge(
              axes: <RadialAxis>[RadialAxis(
                startAngle: 180,
                endAngle: 360,
                canScaleToFit: true,
                showLastLabel: true,
                interval: 25,
                // labelFormat: '{value}%',
                labelFormat: '',
                // labelsPosition: ElementsPosition.outside,
                tickOffset: 15,
                minorTickStyle: const MinorTickStyle(
                    thickness: 3, length: 0.05, lengthUnit: GaugeSizeUnit.factor, color: Color(0xffC4C4C4)),
                majorTickStyle: const MajorTickStyle(
                    thickness: 5, length: 0.1, lengthUnit: GaugeSizeUnit.factor, color: Color(0xff071A45)),
                minorTicksPerInterval: 4,
                // axisLineStyle: const AxisLineStyle(thickness: 30), showTicks: false,
                axisLabelStyle: const GaugeTextStyle(fontWeight: FontWeight.w500, color: Color(0xff071A45),),
                axisLineStyle:
                const AxisLineStyle(thickness: 0.1, color: Color(0xFFE8EAF4), thicknessUnit: GaugeSizeUnit.factor,cornerStyle: CornerStyle.bothCurve),
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 70,
                    enableAnimation: true,
                    // needleStartWidth: 0,
                    needleEndWidth: 15, //5
                    needleLength: 0.4,
                    needleColor: Color(0xffEF9400),
                    knobStyle: KnobStyle(
                      color: Colors.white,
                      borderColor: Color(0xffEF9400),
                      knobRadius: 20, //0.06,
                      borderWidth: 20,
                      sizeUnit: GaugeSizeUnit.logicalPixel,
                    ),
                    gradient: LinearGradient(colors: [
                      Color(0xffFFDE00),
                      Color(0xffFD5900),
                    ]),
                    tailStyle: TailStyle(
                      // color:Color(0xFFDADADA),
                      width: 3, //5
                      lengthUnit: GaugeSizeUnit.logicalPixel,
                      length: 0, //0.15
                    ),
                  ),
                  RangePointer(value: 70, width: 20, enableAnimation: true, color: Color(0xffEF9400),cornerStyle: CornerStyle.bothCurve),
                  MarkerPointer(
                    value: 68,
                    color: Colors.white,
                    markerHeight: 5,
                    markerWidth: 5,
                    markerType: MarkerType.circle,
                  ),
                ],
                annotations: const [
                  GaugeAnnotation(
                      angle: 180,
                      positionFactor: 0.7,
                      widget: RotatedBox(quarterTurns: 1, child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff071A45)),
                      ),),
                  ),
                  GaugeAnnotation(
                    angle: 225,
                    positionFactor: 0.7,
                    widget: RotatedBox(quarterTurns: 1, child: Text(
                      '25',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff071A45)),
                    ),),
                  ),
                  GaugeAnnotation(
                    angle: 270,
                    positionFactor: 0.7,
                    widget: RotatedBox(quarterTurns: 1, child: Text(
                      '50',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff071A45)),
                    ),),
                  ),
                  GaugeAnnotation(
                    angle: 315,
                    positionFactor: 0.7,
                    widget: RotatedBox(quarterTurns: 1, child: Text(
                      '75',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff071A45)),
                    ),),
                  ),
                  GaugeAnnotation(
                    angle: 360,
                    positionFactor: 0.7,
                    widget: RotatedBox(quarterTurns: 1, child: Text(
                      '100',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff071A45)),
                    ),),
                  ),
                ],
              )],
            ),
          ),
      ),
    );
  }
}
