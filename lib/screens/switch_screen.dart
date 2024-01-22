import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Switch',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            Switch(
              value: switchValue,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
