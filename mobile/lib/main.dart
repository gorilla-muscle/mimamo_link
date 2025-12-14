import 'package:flutter/material.dart';
import 'router/router.dart';

void main() {
  runApp(MimamoLink());
}

class MimamoLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'みまもりんく',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      routerConfig: router
    );
  }
}
