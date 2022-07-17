import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
      ),
      body: Center(child: Text('Settings')),
    );
  }
}
