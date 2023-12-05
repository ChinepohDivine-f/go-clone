import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NuemorphicC extends StatelessWidget {
  final Content_child;

  const NuemorphicC({super.key, required this.Content_child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.elliptical(50, 35)),
          // border: Border.all(
          //   color: Colors.white,
          //   style: BorderStyle.solid,
          //   width: 3
          // ),

          color: Colors.white24,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              blurStyle: BlurStyle.normal,
              blurRadius: 15,
              spreadRadius: 5,
              // offset: const Offset(1, 5),
              inset: true,
            ),
            BoxShadow(
                color: Colors.white.withOpacity(0.8),
                blurStyle: BlurStyle.normal,
                blurRadius: 15,
                spreadRadius: 8,
                offset: const Offset(-1, -5),
                inset: true),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey.withOpacity(0.7),
              Colors.white.withOpacity(0.9),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
      child: ClipPath(
          child: Content_child,
          // clipper: ShapeBorderClipper(
          //     ),
          clipBehavior: Clip.antiAlias,
          ),
    );
  }
}
