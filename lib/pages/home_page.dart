import 'package:flutter/material.dart';
import 'package:periodictable/pages/table_page.dart';
import 'package:periodictable/widgets/element_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TABELA PERIODICA DO AUGUSTO')),
        body: ElementWidget());
  }
}
