import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});
  @override
  State<DetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Body1(),
    );
  }
}
