import 'package:drink_water/add_water_screen/radial_drink_widget.dart';
import 'package:flutter/material.dart';

import '../water_amount_counter/water_amount_counter.dart';

class DrinkValue {
  double c;

  DrinkValue({required this.c});
}

class NextScreenWidget extends StatefulWidget {
  final UserInput newUserInput;
  const NextScreenWidget({Key? key, required this.newUserInput})
      : super(key: key);

  @override
  State<NextScreenWidget> createState() => TitlePageWidgetState();
}

class TitlePageWidgetState extends State<NextScreenWidget> {
  final drinkValue = DrinkValue(c: 0);
  late double waterConsumed;
  void onPressed () {
    setState(() {
      var a = widget.newUserInput.userInput;
      var b = waterConsumed;
      var percent = (b / a);
      drinkValue.c = drinkValue.c + percent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFF2173d0),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Drink Water',
          style: TextStyle(
            color: Color(0xFF2173d0),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFe6f4fc),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: RadialDrinkWidget(
                  drinkValue: drinkValue,
                  newUserInput: widget.newUserInput,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        AddWaterButton(text: "150 ml", waterConsumed: 0.15, onPressed: onPressed),
                        const SizedBox(height: 10),
                        AddWaterButton(text: "250ml", waterConsumed: 0.25, onPressed: onPressed)
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        AddWaterButton(text: "0,5l", waterConsumed: 0.5, onPressed: onPressed),
                        const SizedBox(height: 10),
                        AddWaterButton(text: "1L", waterConsumed: 1, onPressed: onPressed)
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


class AddWaterButton extends StatelessWidget {
  final String text;
  final double waterConsumed;
  final Function onPressed;
  const AddWaterButton({
    Key? key, required this.text, required this.waterConsumed, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
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
              const Color(0xFF2173d0)),
        ),
        onPressed: onPressed(waterConsumed),
        child: Text(text,
          style: TextStyle(
              color: Color(0xFFd5e8f2),
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
      ),
    );
  }
}


//setState(() {
//var a = widget.newUserInput.userInput;
//const b = 0.15;
//var percent = (b / a);
//drinkValue.c = drinkValue.c + percent;
// });

