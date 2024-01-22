import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Slider',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 20,
          ),
          Slider(
            value: currentSliderValue,
            activeColor: Colors.blue,
            inactiveColor: Colors.black,
            max: 100,
            divisions: 100,
            label: currentSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                currentSliderValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
