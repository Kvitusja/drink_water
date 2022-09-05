import 'package:drink_water/add_water_screen/radial_drink_widget.dart';
import 'package:flutter/material.dart';

import '../water_amount_counter/water_amount_counter.dart';

class DrinkValue {
  double c;

  DrinkValue({required this.c});
}

class NextScreenWidget extends StatefulWidget {
  final UserInput newUserInput;
  const NextScreenWidget({Key? key, required this.newUserInput}) : super(key: key);

  @override
  State<NextScreenWidget> createState() => TitlePageWidgetState();
}

class TitlePageWidgetState extends State<NextScreenWidget> {
  final drinkValue = DrinkValue(c: 0);

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                  child: RadialDrinkWidget(
                drinkValue: drinkValue,
              )),
              const SizedBox(height: 50),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFa7a9d1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  var a = widget.newUserInput.userInput;
                                  const b = 0.15;
                                  var percent = (b / a);
                                  drinkValue.c = drinkValue.c + percent;
                                  print(a);
                                });
                              },
                              child: const Text(
                                '150 ml',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22),
                              )),
                          // child: HomMuchDrinkButton(color: Color(0xFFa7a9d1), text: Text('150 ml')),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFFa7a9d1)),
                            ),
                            onPressed: () {
                              setState(() {
                                var a = widget.newUserInput.userInput;
                                const b = 0.25;
                                var percent = (b / a);
                                drinkValue.c = drinkValue.c + percent;
                              });
                            },
                            child: const Text(
                              '250 ml',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22),
                            ),
                          ),
                          // child: HomMuchDrinkButton(color: Color(0xFF80a4ed), text: Text('250 ml')),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFa7a9d1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  var a = widget.newUserInput.userInput;
                                  const b = 0.5;
                                  var percent = (b / a);
                                  drinkValue.c = drinkValue.c + percent;
                                });
                              },
                              child: const Text(
                                '0.5 l',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22),
                              )),
                          // child: HomMuchDrinkButton(color: Color(0xFF627db5), text: Text('0.5 l')),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFa7a9d1)),
                              ),
                              onPressed: () {
                                setState(() {
                                  var a = widget.newUserInput.userInput;
                                  const b = 1;
                                  var percent = (b / a);
                                  drinkValue.c = drinkValue.c + percent;
                                });
                              },
                              child: const Text(
                                '1 l',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22),
                              )),
                          // child: HomMuchDrinkButton(color: Color(0xFF3c517d), text: Text('1 l')),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
