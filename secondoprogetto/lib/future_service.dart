import 'package:primoprogetto/do_something_mixin.dart';

class FutureService with DoSomethingMixin {
  Future<int> doSomething(int duration) async {
    return doSomethingWithType(duration, 2);
  }
}
