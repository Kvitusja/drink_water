import 'package:drink_water/add_water_screen/track_water_drunk.dart';
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
        title: const Text('Drink Water'),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFa7a9d1),
              Color(0xFF9a9bb8),
              Color(0xFF80a4ed),
              Color(0xFF627db5),
              Color(0xFF3c517d),
            ],
          ),
        ),
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
        height: 100,
        width: 130,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF222442))),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NextScreenWidget()));
            },
            child: Text(
                style: TextStyle(
                    color: Color(0xFFa7a9d1),
                    fontSize: 27,
                    fontWeight: FontWeight.w700),
                'Hydrate Me')),
      ),
    );
  }
}
