import 'package:flutter/material.dart';

class WilllPopScope extends StatefulWidget {
  @override
  _WilllPopScopeState createState() => _WilllPopScopeState();
}

class _WilllPopScopeState extends State<WilllPopScope> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you Really want to exit the App?"),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text("No")),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text("Yes"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Utils"),
          ),
          body: Center(
            child: Container(
              child: Text(
                  "This is WillPopScope Widget Example.\nPress backButton!!"),
            ),
          )),
    );
  }
}
