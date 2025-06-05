import 'package:get/get.dart';
import 'package:getx_multi_lang/app/data/models/post_model.dart';

class HomeController extends GetxController {
  final posts = <Post>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() {
    final dummyPosts = [
      Post(
        id: 1,
        title: 'Flutter GetX',
        description: 'Learn Flutter GetX for state management',
        imageUrl: 'https://picsum.photos/id/1/200/300',
      ),
      Post(
        id: 2,
        title: 'Flutter UI',
        description: 'Create beautiful UI with Flutter',
        imageUrl: 'https://picsum.photos/id/2/200/300',
      ),
      Post(
        id: 3,
        title: 'Flutter Animations',
        description: 'Implement smooth animations in Flutter',
        imageUrl: 'https://picsum.photos/id/3/200/300',
      ),
      Post(
        id: 4,
        title: 'Flutter Internationalization',
        description: 'Add multi-language support to your Flutter app',
        imageUrl: 'https://picsum.photos/id/4/200/300',
      ),
    ];
    posts.assignAll(dummyPosts);
  }
}