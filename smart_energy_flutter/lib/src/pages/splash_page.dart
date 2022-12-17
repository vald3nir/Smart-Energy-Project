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

class SplashBody extends StatefulWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RotationTransition(
            turns: _animation,
            child: Image.asset(
              Constants.logoPath,
              height: 150,
              scale: 2.5,
            ),
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
