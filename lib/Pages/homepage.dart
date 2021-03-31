import 'package:flutter/material.dart';
import 'package:flutter_widgets/Routes/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: Container(
        child: WillpopScope(),
      ),
    );
  }
}

class WillpopScope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    //context.vxNav.push(Uri.parse(MyRoutes.willpopscope));
                    Navigator.pushNamed(context, MyRoutes.willpopscope);
                  },
                  child: "WillPopScope".text.make()),
            ).p12(),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.tabBar);
                  },
                  child: "Tab Bar".text.make()),
            ).p12(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.animatedBuilder);
                  },
                  child: "Animated Builder".text.make()),
            ).p12()
          ],
        )
      ],
    );
  }
}
