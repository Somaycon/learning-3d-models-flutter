import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:o3d/package/lib/src/model_viewer_plus.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  O3DController controller = O3DController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Teste de Modelos 3D',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ModelViewer(
            autoPlay: true,
            src: 'assets/images/vi_arcane.glb',
          ),
        ),
      ),
    );
  }
}
