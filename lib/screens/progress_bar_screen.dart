import 'package:flutter/material.dart';

class ProogressBarScreen extends StatefulWidget {
  const ProogressBarScreen({super.key});

  @override
  State<ProogressBarScreen> createState() => _ProogressBarScreenState();
}

class _ProogressBarScreenState extends State<ProogressBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Linear Progress Indicator',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              minHeight: 5,
              backgroundColor: Colors.black,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Circular Progress Indicator',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 35,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.black,
            color: Colors.blue,
            strokeAlign: 5,
            strokeWidth: 10,
          )
        ],
      ),
    );
  }
}
