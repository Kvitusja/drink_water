import 'dart:math';
import 'package:drink_water/add_water_screen/track_water_drunk.dart';
import 'package:flutter/material.dart';

import '../water_amount_counter/water_amount_counter.dart';

class RadialDrinkWidget extends StatefulWidget {
  final DrinkValue drinkValue;
  final UserInput newUserInput;
  const RadialDrinkWidget({Key? key, required this.drinkValue, required this.newUserInput})
      : super(key: key);

  @override
  State<RadialDrinkWidget> createState() => _RadialDrinkWidgetState();
}

class _RadialDrinkWidgetState extends State<RadialDrinkWidget> {
  roundDrunkWater() {
    if (((widget.drinkValue.c * 100).round()) < 100) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              style:
              const TextStyle(color: Color(0xFFd5e8f2), fontWeight: FontWeight.w600, fontSize: 22),
              '${(widget.drinkValue.c * 100).round()}%'),
          Text(
              style:
              const TextStyle(color: Color(0xFFd5e8f2), fontWeight: FontWeight.w600, fontSize: 22),
              '${(widget.newUserInput.userInput)}L'),
        ],
      );
    } else {
      return Text(
          style:
          TextStyle(color: Color(0xFFd5e8f2), fontWeight: FontWeight.w600, fontSize: 20),
          'Amazing! \nYou did it!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(border: Border.all(color: Colors.transparent)),
      child: RadialDrinkPainter(
        percent: widget.drinkValue.c,
        radialColor: Color(0xFF2173d0),
        backgroundColor: Color(0xFFd5e8f2),
        radialWidth: 8,
        child: roundDrunkWater(),
        //Text('${(widget.drinkValue.c * 100).round()}%',
        //     style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 24,
        //         fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class RadialDrinkPainter extends StatelessWidget {
  final Widget child;
  final double percent;
  final Color backgroundColor;
  final Color radialColor;
  final double radialWidth;
  const RadialDrinkPainter(
      {Key? key,
      required this.child,
      required this.percent,
      required this.backgroundColor,
      required this.radialColor,
      required this.radialWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
            painter:
                MyPaint(percent, radialColor, backgroundColor, radialWidth)),
        Center(
          child: child,
        ),
      ],
    );
  }
}

class MyPaint extends CustomPainter {
  final double percent;
  final Color backgroundColor;
  final Color radialColor;
  final double radialWidth;
  final startPaint = -pi / 2;
  final finishPaint = pi * 2;

  MyPaint(
      this.percent, this.backgroundColor, this.radialColor, this.radialWidth);
  @override
  void paint(Canvas canvas, Size size) {
    final canvasDrawArc = calcArc(size);

    drawBackground(canvas, size);

    drawArc(canvas, canvasDrawArc);
  }

  void drawArc(Canvas canvas, Rect canvasDrawArc) {
    final radialPaint = Paint();
    radialPaint.color = radialColor;
    radialPaint.style = PaintingStyle.stroke;
    radialPaint.strokeWidth = radialWidth;
    radialPaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
        canvasDrawArc, startPaint, finishPaint * percent, false, radialPaint);
  }

  void drawBackground(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = backgroundColor;
    backgroundPaint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, backgroundPaint);
  }

  Rect calcArc(Size size) {
    const radialMargin = 3;
    final offset = radialWidth / 2 + radialMargin;
    final doubleOffset = offset * 2;
    final canvasDrawArc = Offset(offset, offset) &
        Size(size.width - doubleOffset, size.height - doubleOffset);
    return canvasDrawArc;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
