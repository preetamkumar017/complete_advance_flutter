import 'dart:async';

import 'package:complete_advance_flutter/presentation/resources/assets_manager.dart';
import 'package:complete_advance_flutter/presentation/resources/color_manger.dart';
import 'package:complete_advance_flutter/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _ttimer;

  _startDelay(){
    _ttimer = Timer(Duration(seconds: 2), _goNext);
  }
  _goNext()
  {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _ttimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
}
