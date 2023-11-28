import 'package:flutter/material.dart';

class loader extends StatelessWidget {
  const loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        const CircularProgressIndicator(),
      ],
    );
  }
}