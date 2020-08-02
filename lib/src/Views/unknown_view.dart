import 'package:flutter/material.dart';

class UnknownView extends StatelessWidget {
  const UnknownView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      alignment: Alignment.center,
      child: Text('Unknown Route!'),
    );
  }
}
