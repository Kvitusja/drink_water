import 'package:drink_water/title_screen/title_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DropAnimation extends StatefulWidget {
  const DropAnimation({Key? key}) : super(key: key);

  @override
  State<DropAnimation> createState() => _DropAnimationState();
}

class _DropAnimationState extends State<DropAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool dropDropped = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        if (dropDropped == false) {
          dropDropped = true;
          _controller.forward();
        } else {
          dropDropped = false;
          _controller.reverse();
        }
      },
          child: Lottie.network(
          'https://assets4.lottiefiles.com/datafiles/9Py8o7A1g86DaBn/data.json',
          onLoaded: (composition) {
        _controller.forward().then((value) => _controller.reset());
      }, controller: _controller
          ),
    ));
  }
}
