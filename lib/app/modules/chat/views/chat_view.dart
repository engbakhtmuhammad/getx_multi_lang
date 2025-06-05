import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_multi_lang/app/modules/chat/controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat'.tr),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'recent_chats'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Obx(() => ListView.separated(
                  itemCount: controller.chats.length,
                  separatorBuilder: (context, index) => const Divider(
                    height: 1,
                    indent: 70,
                  ),
                  itemBuilder: (context, index) {
                    final chat = controller.chats[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(chat.avatar),
                        radius: 25,
                      ),
                      title: Text(
                        chat.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            chat.time,
                            style: TextStyle(
                              color: chat.unread > 0
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 5),
                          if (chat.unread > 0)
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                chat.unread.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                        ],
                      ),
                      onTap: () {},
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}