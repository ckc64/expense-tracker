import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          color: Colors.blue[400],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 180, 10, 10),
          child: Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 140,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("total"), Text("123123"), Text("-123123")],
                  ),
                  ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.blue[400]), // <-- Button color
                        overlayColor:
                            MaterialStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.blue[800]; // <-- Splash color
                        }),
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.normal),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
