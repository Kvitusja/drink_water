import 'package:drink_water/add_water_screen/track_water_drunk.dart';
import 'package:flutter/material.dart';

class AmountWaterCount extends StatefulWidget {
  const AmountWaterCount({Key? key}) : super(key: key);

  @override
  State<AmountWaterCount> createState() => _AmountWaterCountState();
}

class _AmountWaterCountState extends State<AmountWaterCount> {
  TextEditingController myCountController = TextEditingController();



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
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
              child: TextField(
                controller: myCountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'What is your weight?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 100,
              width: 130,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF222442),),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NextScreenWidget()));
                },
                child: const Text(
                    style: TextStyle(
                        color: Color(0xFFa7a9d1),
                        fontSize: 27,
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