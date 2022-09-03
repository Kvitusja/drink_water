// import 'package:flutter/material.dart';
//

// class ButtonValues {
//   final double firstButton;
//   final double secondButton;
//   final double thirdButton;
//   final double fourthButton;
//
//   ButtonValues({required this.firstButton, required this.secondButton, required this.thirdButton, required this.fourthButton});
// }
// class HomMuchDrinkButton extends StatefulWidget {
//   final Color color;
//   final Text text;
//   const HomMuchDrinkButton({
//     Key? key, required this.color, required this.text,
//   }) : super(key: key);
//
//   @override
//   State<HomMuchDrinkButton> createState() => _HomMuchDrinkButtonState();
// }
//
// class _HomMuchDrinkButtonState extends State<HomMuchDrinkButton> {
// final buttonValues = ButtonValues(firstButton: 0, secondButton: 0, thirdButton: 0, fourthButton: 0);
//   double c = 0;
//
//   void getPercent(){
//      setState(() {
//       const a = 2.5;
//       const b = 0.5;
//       var percent = (b / a);
//       c = c + percent;
//     });
//     print(c);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all<
//             RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(32.0),
//           ),
//         ),
//         backgroundColor: MaterialStateProperty.all(
//           widget.color
//         ),
//       ),
//       onPressed: () {
//         getPercent();
//       },
//       child: widget.text,
//     );
//   }
// }