import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.label, required this.route});
  final String label;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).popAndPushNamed(route),
          child: Text(
            label,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
