import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:periodictable/models/element_model.dart';
import 'package:periodictable/widgets/element_widget.dart';

class TablePage extends StatefulWidget {
  TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  List<ElementsModel> elements = [];

  getElements() async {
    final String jsonString =
        await rootBundle.loadString('assets/json/periodictable.json');
    final List<dynamic> jsonList = jsonDecode(jsonString)["elements"];

    setState(() {
      for (final json in jsonList) {
        final element = ElementsModel.fromJson(json as Map<String, dynamic>);
        elements.add(element);
        //  print(element.name);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      getElements();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
          9,
          (rowIndex) {
            if (rowIndex == 7 || rowIndex == 8) {
              return const SizedBox.shrink();
            }
            print(elements.length);
            return Row(
              children: List.generate(
                1,
                (colunmIndex) {
                  if (colunmIndex == 0 || colunmIndex == 17 || rowIndex == 0) {
                    return const SizedBox.shrink();
                  }
                  int atomicNumber;
                  if (rowIndex == 1) {
                    atomicNumber = colunmIndex;
                  } else {
                    atomicNumber = (rowIndex - 2) * 18 + colunmIndex - 1;
                  }
                  if (atomicNumber > 118) {
                    return const SizedBox.shrink();
                  }

                  if (elements.isNotEmpty && atomicNumber <= elements.length) {
                    return ElementWidget(
                        // atomicMass:
                        // '10.001', //elements[atomicNumber].atomicMass.toString(),
                        // name: 'HIdrogenio', //elements[atomicNumber].name,
                        //number: '1', //elements[atomicNumber].number.toString(),
                        // symbol: 'H' //elements[atomicNumber].symbol,
                        );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
