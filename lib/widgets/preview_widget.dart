import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return O3D.asset(
      src: src,
      autoPlay: true,
    );
  }
}
