import 'dart:async';

mixin NavigationManager {
  final navigateTo = StreamController<String>();
  Stream<String> get navigateToStream => navigateTo.stream;
  void setNavigation(String value) => navigateTo.sink.add(value);
}
