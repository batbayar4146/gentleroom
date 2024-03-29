import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Container(
        alignment: Alignment.center,
        child: const SpinKitFadingFour(
          color: Colors.black,
          size: 50.0,
        ),
      ),
    );
  }
}
