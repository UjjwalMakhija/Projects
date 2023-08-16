import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:pbl_project/result.dart';
import './questionmain.dart';

class meter extends StatefulWidget {
  const meter({super.key});
 //

  // meter({required this.totalscore});
  @override
  State<meter> createState() => _meterState();
}

class _meterState extends State<meter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 213, 216),
        body: Center(
          child: SfRadialGauge(
            title: GaugeTitle(
                text: 'Meter',
                textStyle:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            enableLoadingAnimation: true,
            animationDuration: 6000,
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 1,
                maximum: 28,
                pointers: <GaugePointer>[
                  NeedlePointer(
                      value: 10,
                      enableAnimation: true,
                      animationType: AnimationType.bounceOut,
                      tailStyle: TailStyle(
                        width: 5,
                        borderColor: Colors.white,
                      ))
                ],
                ranges: [
                  GaugeRange(
                    startValue: 0,
                    endValue: 10,
                    color: Colors.red,
                    startWidth: 5,
                    endWidth: 10,
                    label: 'Ok',
                    labelStyle: GaugeTextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  GaugeRange(
                    startValue: 10,
                    endValue: 19,
                    color: Colors.orange,
                    endWidth: 20,
                    startWidth: 10,
                    label: 'Good',
                    labelStyle: GaugeTextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  GaugeRange(
                    startValue: 19,
                    endValue: 28,
                    color: Colors.green,
                    startWidth: 20,
                    endWidth: 30,
                    label: 'VeryGood',
                    labelStyle: GaugeTextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      'Score ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    positionFactor: 0.5,
                    angle: 90,
                    horizontalAlignment: GaugeAlignment.center,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
