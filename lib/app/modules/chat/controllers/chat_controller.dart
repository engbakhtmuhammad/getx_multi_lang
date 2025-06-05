import 'package:get/get.dart';
import 'package:getx_multi_lang/app/data/models/chat_model.dart';

class ChatController extends GetxController {
  final chats = <Chat>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchChats();
  }

  void fetchChats() {
    final dummyChats = [
      Chat(
        id: 1,
        name: 'John Doe',
        lastMessage: 'Hey, how are you?',
        time: '10:30 AM',
        avatar: 'https://randomuser.me/api/portraits/men/1.jpg',
        unread: 2,
      ),
      Chat(
        id: 2,
        name: 'Jane Smith',
        lastMessage: 'Are you coming to the meeting?',
        time: '9:15 AM',
        avatar: 'https://randomuser.me/api/portraits/women/2.jpg',
        unread: 0,
      ),
      Chat(
        id: 3,
        name: 'Mike Johnson',
        lastMessage: 'The project is ready for review',
        time: 'Yesterday',
        avatar: 'https://randomuser.me/api/portraits/men/3.jpg',
        unread: 1,
      ),
      Chat(
        id: 4,
        name: 'Sarah Williams',
        lastMessage: 'Thanks for your help!',
        time: 'Yesterday',
        avatar: 'https://randomuser.me/api/portraits/women/4.jpg',
        unread: 0,
      ),
      Chat(
        id: 5,
        name: 'David Brown',
        lastMessage: 'Let\'s meet tomorrow',
        time: 'Monday',
        avatar: 'https://randomuser.me/api/portraits/men/5.jpg',
        unread: 3,
      ),
    ];
    chats.assignAll(dummyChats);
  }
}