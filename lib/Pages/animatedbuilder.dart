import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AanimatedBuilder extends StatefulWidget {
  @override
  _AanimatedBuilderState createState() => _AanimatedBuilderState();
}

class _AanimatedBuilderState extends State<AanimatedBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Animated Builder".text.make(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: "Animated Builder".text.xl5.amber500.make(),
            ).p(20),
            SizedBox(
              height: 100.0,
              width: 100.0,
            ),
            Container(
              color: Colors.amber,
              height: 200.0,
              width: 200.0,
              child: AnimatedBuilder(
                animation: _animationController,
                child: Container(
                  child: Center(child: "Heet".text.xl3.make()),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                ),
                builder: (context, child) => Transform.rotate(
                    //child: child, offset: Offset(5.0, 10)),
                    //scale: _animationController.value * 1),
                    child: child,
                    angle: _animationController.value * 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
