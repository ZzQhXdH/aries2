import 'package:flutter/material.dart';

class RippleButton extends StatefulWidget {

  final VoidCallback _onClick;
  final String _text;
  final Color _backgroundColor;
  final Color _rippleColor;
  final double _radius;
  final double _textSize;

  RippleButton.custom({
    VoidCallback click,
    String text,
  }) :
        _onClick = click,
        _text = text,
        _backgroundColor = Colors.blue,
        _rippleColor = Colors.yellow,
        _radius = 10,
        _textSize = 20;

  RippleButton({
    VoidCallback click,
    String text,
    Color backgroundColor = Colors.blue,
    Color rippleColor = Colors.yellow,
    double radius = 10,
    double textSize = 18,
  }):
        _onClick = click,
        _text = text,
        _backgroundColor = backgroundColor,
        _rippleColor = rippleColor,
        _radius = radius,
        _textSize = textSize;

  @override
  State<StatefulWidget> createState() {
    return _RippleButtonState();
  }
}

class _RippleButtonState extends State<RippleButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: widget._backgroundColor,
          borderRadius: BorderRadius.circular(widget._radius),
        ),
        child: InkWell(
          onTap: widget._onClick,
          borderRadius: BorderRadius.circular(widget._radius),
          splashColor: widget._rippleColor,
          child: Center(
            child: Text(
              widget._text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: widget._textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
