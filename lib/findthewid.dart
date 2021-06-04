import 'package:flutter/material.dart';

class findthe extends StatefulWidget {
  const findthe({Key key}) : super(key: key);

  @override
  _findtheState createState() => _findtheState();
}

class _findtheState extends State<findthe> {
  double xPosition = 0.0;
  double yPosition = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Touch X: ${xPosition.toStringAsFixed(2)}, Y: ${yPosition.toStringAsFixed(2)}"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                  "X : ${xPosition.toStringAsFixed(2)}, Y : ${yPosition.toStringAsFixed(2)}"),
              GestureDetector(
                  onTapDown: (details) {
                    setState(() {
                      xPosition = details.localPosition.dx;
                      yPosition = details.localPosition.dy;
                    });
                  },
                  child: Container(
                    height: 1500,
                    width: 200,
                    child: Center(
                      child: Text("Hello"),
                    ),
                    color: Colors.deepOrange,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
