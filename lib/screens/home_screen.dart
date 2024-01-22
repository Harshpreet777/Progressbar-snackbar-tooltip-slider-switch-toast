import 'package:demo3/screens/progress_bar_screen.dart';
import 'package:demo3/screens/slider_screen.dart';
import 'package:demo3/screens/snack_bar_screen.dart';
import 'package:demo3/screens/switch_screen.dart';
import 'package:demo3/screens/tooltip_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 210, child: ProogressBarScreen()),
            
            SizedBox(height: 200, child: SnackBarScreen()),
            
            SizedBox(height: 60, child: ToolTipScreen()),
            
            SizedBox(height: 100, child: SliderScreen()),
            
            SizedBox(height: 100, child: SwitchScreen()),
          ],
        ),
      ),
    );
  }
}
