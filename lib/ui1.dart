import 'package:flutter/material.dart';

class Ui1 extends StatefulWidget {
  const Ui1({super.key});

  @override
  State<Ui1> createState() => _Ui1State();
}

class _Ui1State extends State<Ui1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Expanded(
              flex: 2,
              child: LayoutBuilder(
                builder: (context, constraint) {
                  return Text(
                    'Sample', maxLines: 1,
                    style:
                        TextStyle(fontSize: constraint.maxWidth / 3.4), //5.35),
                  );
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
