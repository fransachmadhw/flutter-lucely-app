import 'package:get/get.dart';
import 'package:lucely_app/pages/main/counseling_page.dart';
import 'package:lucely_app/pages/main/explore_page.dart';
import 'package:lucely_app/pages/main/home_page.dart';
import 'package:lucely_app/pages/main/notification_page.dart';

class MainAppController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final pages = [
    const HomePage(),
    const CounselingPage(),
    const NotificationPage(),
    const ExplorePage(),
  ];

  void setPageIndex(int index) {
    currentPageIndex.value = index;
  }
}
