import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  const HorizontalView({
    Key? key,
    required this.child,
    required this.sectionName,
  }) : super(key: key);
  final Widget child;
  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              top: 10,
            ),
            child: Text(
              sectionName,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Container(
            height: 160,
            child: child,
          ),
        ],
      ),
    );
  }
}
