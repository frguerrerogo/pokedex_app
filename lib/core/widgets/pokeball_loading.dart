import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart';

class PokeballLoading extends StatefulWidget {
  final double size;

  const PokeballLoading({super.key, this.size = 40});

  @override
  State<PokeballLoading> createState() => _PokeballLoadingState();
}

class _PokeballLoadingState extends State<PokeballLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Image.asset(
        AppImages.logoPokeball,
        width: widget.size,
        height: widget.size,
      ),
    );
  }
}
