import 'api.dart';
import 'package:flutter/material.dart';

class apitester extends StatelessWidget {
  const apitester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: callAPI(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return snapshot.data;
            }),
      ),
    );
  }
}
