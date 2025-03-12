import 'package:flutter/material.dart';

class CalBillUi extends StatefulWidget {
  const CalBillUi({super.key});

  @override
  State<CalBillUi> createState() => _CalBillUiState();
}

class _CalBillUiState extends State<CalBillUi>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
