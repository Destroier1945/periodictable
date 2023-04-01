import 'package:flutter/material.dart';
import 'package:periodictable/models/element_model.dart';

class ElementWidget extends StatelessWidget {
  final ElementsModel elements;

  const ElementWidget({super.key, required this.elements});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 100,
      width: 100,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                elements.atomicMass.toString(),
                style: const TextStyle(fontSize: 10),
              ),
              Text(
                elements.number.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          Text(
            elements.symbol,
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            elements.name,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
