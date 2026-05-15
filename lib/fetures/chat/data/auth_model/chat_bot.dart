class MessageModel {
  final String text;
  final bool isBot;
  final DateTime time;

  MessageModel({
    required this.text,
    required this.isBot,
    required this.time,
  });
}