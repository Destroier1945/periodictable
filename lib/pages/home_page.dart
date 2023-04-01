import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TABELA PERIODICA DO AUGUSTO')),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}
