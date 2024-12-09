import 'package:flutter/material.dart';


class NeuBox extends StatelessWidget {
  final Widget? child;


  const NeuBox({Key? key, required this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white24,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
          const BoxShadow(
            color: Colors.white24,
            blurRadius: 15,
            offset: Offset(-4, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12.0),
      child: child,
    );
  }
}