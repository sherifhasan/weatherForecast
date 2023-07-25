import 'package:flutter/material.dart';

class ForecastDetailsExpandedView extends StatefulWidget {
  final Widget child;
  final bool expand;

  const ForecastDetailsExpandedView({required this.child, super.key, this.expand = false});

  @override
  ForecastDetailsExpandedViewState createState() => ForecastDetailsExpandedViewState();
}

class ForecastDetailsExpandedViewState extends State<ForecastDetailsExpandedView>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _prepareAnimations();
    _runExpandCheck();
  }

  void _prepareAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ForecastDetailsExpandedView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
