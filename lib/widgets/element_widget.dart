import 'package:flutter/material.dart';

class ElementWidget extends StatelessWidget {
  //final String atomicMass;
  //final String number;
  //final String symbol;
  //final String name;

  const ElementWidget({
    super.key,
    // required this.atomicMass,
    // required this.name,
    // required this.number,
    // required this.symbol
  });

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
              Flexible(
                child: Text(
                  '10.001',
                  // atomicMass.toString(),
                  //  style: const TextStyle(fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Flexible(
                child: Text(
                  '1',
                  //  number.toString(),
                  //   style: const TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Flexible(
            child: Text(
              'H',
              // symbol,
              //   style: const TextStyle(fontSize: 30),
            ),
          ),
          Flexible(
            child: Text(
              'Hidrogenio',
              //  name,
//style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
