import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'deneme_view_model.dart';

final DenemeViewModel _denemeViewModel = DenemeViewModel();

class DenemeView extends StatelessWidget {
  const DenemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deneme'),
        ),
        body: Column(
          children: [
            Center(child: Observer(builder: (_) {
              return Text(_denemeViewModel.count.toString());
            })),
            ElevatedButton(
              onPressed: () {
                _denemeViewModel.increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ));
  }
}
