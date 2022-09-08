import 'package:drink_water/water_amount_counter/water_amount_counter.dart';
import 'package:flutter/material.dart';

import 'lottie_animation.dart';

class TitlePageWidget extends StatefulWidget {
  const TitlePageWidget({Key? key}) : super(key: key);

  @override
  State<TitlePageWidget> createState() => _TitlePageWidgetState();
}

class _TitlePageWidgetState extends State<TitlePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Drink Water',
          style: TextStyle(
            color: Color(0xFFc9eaff),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFd5e8f2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(flex: 2, child: SizedBox()),
            Expanded(flex: 1, child: SizedBox(child: DropAnimation())),
            Expanded(flex: 2, child: SizedBox(child: HydrateMeButton())),
            Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

class HydrateMeButton extends StatefulWidget {
  const HydrateMeButton({Key? key}) : super(key: key);

  @override
  State<HydrateMeButton> createState() => _HydrateMeButtonState();
}

class _HydrateMeButtonState extends State<HydrateMeButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: 124,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF2173d0))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AmountWaterCount()));
          },
          child: Text(
              style: TextStyle(
                  color: Color(0xFFd5e8f2),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
              'Hydrate'),
        ),
      ),
    );
  }
}
