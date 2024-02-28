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
      body: SingleChildScrollView(
        child: Center(
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
                thumbColor: const MaterialStatePropertyAll(Colors.blue),
                activeTrackColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              const SelectableText(
                showCursor: true,
                cursorColor: Colors.red,
                "Debbie had taken George for granted for more than fifteen years now. He wasn't sure what exactly had made him choose this time and place to address the issue, but he decided that now was the time. He looked straight into her eyes and just as she was about to speak, turned away and walked out the door.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
