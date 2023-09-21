import 'package:flutter/material.dart';

import 'inani_container.dart';

class InaniCross extends StatefulWidget {
  final double leftPos;
  final double rightPos;
  final int duration;
  final Curve curve;
  final List<InaniContainer> children;
  const InaniCross({
    super.key,
    this.leftPos = 0,
    this.rightPos = 0,
    this.duration = 2,
    this.curve = Curves.elasticOut,
    required this.children,
  });

  @override
  State<InaniCross> createState() => _InaniCrossState();
}

class _InaniCrossState extends State<InaniCross> {
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
    double height = 0;
    return Stack(
      children: <Widget>[
        for (int i = 0;
            i < widget.children.length;
            height += widget.children[i].constraints!.minHeight, i++)
          i % 2 == 0
              ? AnimatedPositioned(
                  top: height,
                  left: start
                      ? widget.leftPos
                     : (widget.children[i].constraints!.maxWidth * -1),
                  duration: Duration(seconds: widget.duration),
                  curve: widget.curve,
                  child: widget.children[i],
                )
              : AnimatedPositioned(
                  top: height,
                  right: start
                      ? widget.rightPos
                      : (widget.children[i].constraints!.maxWidth * -1),
                  duration: Duration(seconds: widget.duration),
                  curve: widget.curve,
                  child: widget.children[i],
                )
      ],
    );
  }
}
