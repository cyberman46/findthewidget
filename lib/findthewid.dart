import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

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
                    height: 300,
                    width: 300,
                    child: Zoom(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("Happy zoom!!"),
                        )),
                    color: Colors.deepOrange,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
