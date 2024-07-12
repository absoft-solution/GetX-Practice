import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class FavController extends GetxController {
  RxList<String> favList = ['PC', 'Laptop', 'TV', 'Keyboard'].obs;
  RxList tempFavList = [].obs;

  addItem(value) {
    tempFavList.add(value);
  }

  removeItem(value) {
    tempFavList.remove(value);
  }
}
