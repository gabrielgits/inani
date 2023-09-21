import 'package:flutter/material.dart';

import 'inani_container.dart';

class InaniBottom extends StatefulWidget {
  final double topPos;
  final int duration;
  final Curve curve;
  final InaniContainer child;
  const InaniBottom({
    super.key,
    this.topPos = 0,
    this.duration = 2,
    this.curve = Curves.elasticOut,
    required this.child,
  });

  @override
  State<InaniBottom> createState() => _InaniBottomState();
}

class _InaniBottomState extends State<InaniBottom> {
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
          bottom: start
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
