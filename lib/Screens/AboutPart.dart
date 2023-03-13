import 'package:electronic_store/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

class AboutPart extends StatelessWidget {
  const AboutPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Divider(),
          const Text(
            'Mazlum Erkek',
            style: phoneNameTextStyle,
          ),
          const Divider(),
          const Text('Electronic Store'),
          const Divider(),
          const Text('v1.0')
        ],
      ),
    );
  }
}
