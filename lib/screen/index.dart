// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tracker/components/header.dart';


//homepage
class IndexScreen extends StatefulWidget {
  const IndexScreen({ Key? key }) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Header()
        ],
      ),
    );
  }
}