import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TaabBar extends StatefulWidget {
  @override
  _TaabBarState createState() => _TaabBarState();
}

class _TaabBarState extends State<TaabBar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: "TabBar".text.xl6.amber500.make(),
            ),
            SizedBox(
              height: 50,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(color: Colors.amber),
                automaticIndicatorColorAdjustment: true,
                controller: _tabController,
                indicatorColor: Colors.amber,
                tabs: [
                  Tab(
                      child: Text(
                    "A",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    "B",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    "C",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ]),
            Container(
              height: 300,
              width: 500,
              color: Colors.grey,
              child: TabBarView(
                  controller: _tabController, children: [A(), B(), C()]),
            )
          ],
        ),
      ),
    );
  }
}

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: "Page A".text.bold.xl5.make(),
      ),
    );
  }
}

class B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: "Page B".text.bold.xl5.make(),
      ),
    );
  }
}

class C extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: "Page C".text.bold.xl5.make(),
      ),
    );
  }
}
