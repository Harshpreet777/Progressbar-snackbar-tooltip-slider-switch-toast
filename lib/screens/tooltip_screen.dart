import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Tooltip(
          message: 'This is the ToolTip',
          child: Text(
            'Hover on text to see ToolTip',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
