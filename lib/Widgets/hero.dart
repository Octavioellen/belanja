import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'mainHero',
      child: Image.asset(
        '../asset/image/gambar gula.jpg', 
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}