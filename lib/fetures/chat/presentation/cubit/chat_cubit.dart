import 'package:chat_bot/fetures/chat/data/auth_model/chat_bot.dart';
import 'package:chat_bot/fetures/chat/data/service/gemini_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final GeminiService _gemini;

  ChatCubit(this._gemini) : super(const ChatState());

  Future<void> sendInitialQuery(String query) async {
    await sendMessage(query);
  }

  Future<void> sendMessage(String text) async {
    final trimmed = text.trim();
    if (trimmed.isEmpty) return;
    final userMsg = MessageModel(
      text: trimmed,
      isBot: false,
      time: DateTime.now(),
    );
    emit(state.copyWith(
      messages: [...state.messages, userMsg],
      isBotTyping: true,
      clearError: true,
    ));
    try {
      final reply = await _gemini.sendMessage(trimmed);
      final botMsg = MessageModel(
        text: reply,
        isBot: true,
        time: DateTime.now(),
      );
      emit(state.copyWith(
        messages: [...state.messages, botMsg],
        isBotTyping: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isBotTyping: false,
        error: e.toString(),
      ));
    }
  }
}