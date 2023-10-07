abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs {
  // shared variables and functions that will be used through any view model.
}

abstract class BaseViewModelInputs {
  void start(); // will be called during the initialization of the view model
  void dispose(); // will be called when the view model is disposed
}

mixin BaseViewModelOutputs {}
