// import 'package:flutter/animation.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage>
//     with SingleTickerProviderStateMixin {
//   AnimationController? controller;
//   Animation? alignTween1;
//   Animation? alignTween2;
//   Animation? alignTween3;
//   Animation? alignTween4;
//   TweenSequence? sequence;
//
//   @override
//   void initState() {
//     controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 5));
//     var alignTween1 = Tween<Align>(
//       begin: Align(
//         alignment: Alignment.topLeft,
//       ),
//       end: Align(
//         alignment: Alignment.topRight,
//       ),
//     ).animate(CurvedAnimation(parent: controller!, curve: Curves.linear));
//     alignTween2 = Tween<Align>(
//       begin: const Align(
//         alignment: Alignment.topRight,
//       ),
//       end: const Align(
//         alignment: Alignment.bottomRight,
//       ),
//     ).animate(CurvedAnimation(parent: controller!, curve: Curves.linear));
//     alignTween3 = Tween<Align>(
//       begin: const Align(
//         alignment: Alignment.bottomRight,
//       ),
//       end: const Align(
//         alignment: Alignment.bottomLeft,
//       ),
//     ).animate(CurvedAnimation(parent: controller!, curve: Curves.linear));
//     alignTween4 = Tween<Align>(
//       begin: const Align(
//         alignment: Alignment.bottomLeft,
//       ),
//       end: const Align(
//         alignment: Alignment.topLeft,
//       ),
//     ).animate(CurvedAnimation(parent: controller!, curve: Curves.linear));
//     controller!.repeat();
//     sequence = TweenSequence([
//       TweenSequenceItem<Align>(tween: alignTween1!, weight: 0.5),
//       TweenSequenceItem<Align>(tween: alignTween2!, weight: 1),
//       TweenSequenceItem<Align>(tween: alignTween3, weight: 0.5),
//       TweenSequenceItem<Align>(tween: alignTween4, weight: 1)
//     ]);
//
//     controller!.addListener(() {
//       setState(() {});
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: AnimatedBuilder(
//       animation: controller!,
//       builder: (context, child) {
//         return Align(
//             alignment: sequence!.evaluate(controller!),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.green,
//             ));
//       },
//     )));
//   }
// }
