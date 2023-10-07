import 'package:complete_advance_flutter/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // stream controllers

  // inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }
}

// Define mixins
mixin OnBoardingViewModelInputs {
  void goNext() {}
  void goPrevious() {}
  void onPageChanged(int index) {}
}

mixin OnBoardingViewModelOutputs {
  // will be implemented later
}
