import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddController extends GetxController {
  RxInt counter = 0.obs;

  void increaseCounter() {
    counter.value++;
  }

  decreseCount() {
    counter.value--;
  }
}
