import 'package:emoji/app/data/emoji_list.dart';
import 'package:emoji/app/services/storage_service.dart';
import 'package:emoji/app/services/storage_service.dart';
import 'package:emoji/app/services/storage_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final storageService = Get.find<StorageService>();

  final index = 0.obs;

  String getEmoji() {
    return emojiList[index.value];
  }

  void changeIndex() {
    if (index + 1 < emojiList.length) {
      index.value++;
    } else {
      index.value = 0;
    }
    storageService.writeIndex(index.value);
  }

  @override
  void onInit() {
    super.onInit();
    index.value = storageService.readIndex();
  }
}
