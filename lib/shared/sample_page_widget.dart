import 'package:flutter/material.dart';

class SamplePageWidget extends StatelessWidget {
  final IconData _icon;
  final String _message;

  SamplePageWidget(this._icon, this._message);

  @override
  Widget build(BuildContext context) {
    var colorOpacity50 = Theme.of(context).textTheme.bodyText1?.copyWith(
      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.3),
    );
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_icon, size: 100, color: colorOpacity50?.color),
          SizedBox(
            height: 8,
          ),
          Text(
            _message,
            style: colorOpacity50,
          )
        ],
      ),
    );
  }
}