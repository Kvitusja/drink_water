import 'package:drink_water/add_water_screen/track_water_drunk.dart';
import 'package:flutter/material.dart';

class UserInput {
  double userInput;
  UserInput({required this.userInput});
}

class AmountWaterCount extends StatefulWidget {
  const AmountWaterCount({Key? key}) : super(key: key);

  @override
  State<AmountWaterCount> createState() => _AmountWaterCountState();
}

class _AmountWaterCountState extends State<AmountWaterCount> {
  TextEditingController myCountController = TextEditingController();
  var newUserInput = UserInput(userInput: 0);

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
        color: const Color(0xFFd5e8f2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
              child: TextField(
                style: const TextStyle(
                  color: Color(0xFF2173d0),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                controller: myCountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    color: Color(0xFF2173d0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  hintText: 'What is your weight?',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xFF2173d0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 4.0,
                      color: Color(0xFF2173d0),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        myCountController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 60,
              width: 110,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF2173d0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    newUserInput.userInput =
                        int.parse(myCountController.text) * 0.03;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NextScreenWidget(
                                newUserInput: newUserInput,
                              )));
                },
                child: Text(
                    style: TextStyle(
                        color: Color(0xFFd5e8f2),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                    'Count'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
