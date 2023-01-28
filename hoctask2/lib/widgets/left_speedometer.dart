import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LeftSpeedOmeter extends StatelessWidget {
  const LeftSpeedOmeter({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ///NEON EFFECT CONTAINER      
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.55,
      decoration: const BoxDecoration(
          color: Color(0xff00111b),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.green,
                offset: Offset(-8, 0),
                blurRadius: 8,
                spreadRadius: 2),
            BoxShadow(
                color: Colors.blue,
                offset: Offset(8, 0),
                blurRadius: 8,
                spreadRadius: 2),
          ]),

          ///Gauge code starts from here
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        animationDuration: 5,
        
        axes: [
          RadialAxis(
            minimum: 0,
            maximum: 200,
            maximumLabels: 5 ,
            radiusFactor: 1,
            showLastLabel: true,
            axisLineStyle: const AxisLineStyle(
              thicknessUnit: GaugeSizeUnit.logicalPixel,
              cornerStyle: CornerStyle.bothCurve,
            ),

            majorTickStyle: const MajorTickStyle(
              length: 6,
              thickness: 3,
              color: Colors.white,
            ),

            axisLabelStyle: const GaugeTextStyle(
                fontFamily: "Oswald", fontSize: 12, color: Colors.white
            ),

            ranges: [
              GaugeRange(
                startWidth: 1,
                endWidth: 10,
                startValue: 0,
                endValue: 100,
                color: Colors.green,
              ),
              GaugeRange(
                startWidth: 10,
                endWidth: 12,
                startValue: 100,
                endValue: 200,
                color: Colors.blue,
              ),
            ],
            
            pointers: const [
              NeedlePointer(
                needleEndWidth: 2,
                needleStartWidth: 1,
                tailStyle: TailStyle(borderColor: Colors.white, width: 3),
                knobStyle: KnobStyle(
                  color: Colors.blue,
                ),
                needleColor: Colors.green,
              )
            ],

            annotations: const [
              GaugeAnnotation(
                positionFactor: 0.4,
                angle: 270,
                widget: Text(
                  "Rider on",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
