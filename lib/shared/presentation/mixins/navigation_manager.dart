import 'dart:async';

mixin NavigationManager {
  final navigateTo = StreamController<String>.broadcast();
  Stream<String> get navigateToStream => navigateTo.stream;
  void setNavigation(String value) => navigateTo.sink.add(value);
}
