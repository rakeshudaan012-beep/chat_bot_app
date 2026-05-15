import 'package:chat_bot/fetures/chat/data/auth_model/chat_bot.dart';
class ChatState {
  final List<MessageModel> messages;
  final bool isBotTyping;
  final String? error;

  const ChatState({
    this.messages = const [],
    this.isBotTyping = false,
    this.error,
  });

  ChatState copyWith({
    List<MessageModel>? messages,
    bool? isBotTyping,
    String? error,
    bool clearError = false,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isBotTyping: isBotTyping ?? this.isBotTyping,
      error: clearError ? null : (error ?? this.error),
    );
  }
}