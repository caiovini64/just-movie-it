import 'dart:async';

mixin LoadingManager {
  final isLoading = StreamController<bool>();
  Stream<bool> get isLoadingStream => isLoading.stream;
  void setLoading() => isLoading.sink.add(true);
  void setNotLoading() => isLoading.sink.add(false);
}
