import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text(
          style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w700),
          DateFormat('hh:mm:ss').format(DateTime.now()),
        );
      },
    );
  }
}
