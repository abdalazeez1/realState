import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);
  static const path = 'map';
  static const name = 'map';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const MapScreen();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Map Screen")),
    );
  }
}
