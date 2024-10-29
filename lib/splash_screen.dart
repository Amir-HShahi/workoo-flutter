import 'package:flutter/material.dart';
import 'package:workoo/gen/assets.gen.dart';
import 'package:workoo/home_body.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => const HomeBody()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.icons.workooSc.path,
              height: 64,
            ),
            const SizedBox(
              height: 32,
            ),
            const SpinKitThreeBounce(
              color: Color.fromARGB(255, 103, 80, 164),
              size: 32,
            )
          ],
        ),
      )),
    );
  }
}
