import 'package:flutter/material.dart';

import '../app/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(Constants.appName,
            style: const TextStyle(color: Colors.yellow)),
      ),
      body: const SplashBody(),
    );
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Constants.logoPath,
            height: 150,
            scale: 2.5,
          ),
          const SizedBox(height: 10),
          Text(
            "loading",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: Constants.textTitleSize,
            ),
          ),
        ],
      ),
    );
  }
}
