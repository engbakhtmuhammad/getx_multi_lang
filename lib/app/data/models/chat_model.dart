class Chat {
  final int id;
  final String name;
  final String lastMessage;
  final String time;
  final String avatar;
  final int unread;

  Chat({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatar,
    required this.unread,
  });
}