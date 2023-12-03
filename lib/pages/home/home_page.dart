import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../widgets/preview_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _models = [Assets.person, Assets.shoes, Assets.crossbow];
  int currentIndex = 0;

  void _onNext() {
    if (currentIndex < 2) {
      currentIndex++;
    } else {
      currentIndex = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3d Model'),
      ),
      body: PreviewWidget(
        key: ValueKey(currentIndex),
        src: _models[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onNext,
        child: const Icon(Icons.arrow_forward_outlined),
      ), //
    );
  }
}
