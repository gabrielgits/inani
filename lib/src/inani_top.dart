import 'package:flutter/material.dart';

import 'inani_container.dart';

class InaniTop extends StatefulWidget {
  final double topPos;
  final int duration;
  final Curve curve;
  final InaniContainer child;
  const InaniTop({
    super.key,
    this.topPos = 0,
    this.duration = 2,
    this.curve = Curves.elasticOut,
    required this.child,
  });

  @override
  State<InaniTop> createState() => _InaniTopState();
}

class _InaniTopState extends State<InaniTop> {
  bool start = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        start = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          top: start
              ? widget.topPos
              : (widget.child.constraints!.maxHeight * -1),
          duration: Duration(seconds: widget.duration),
          curve: widget.curve,
          child: widget.child,
        )
      ],
    );
  }
}
