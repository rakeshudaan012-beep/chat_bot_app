import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService{
  static const String apiKey='AIzaSyDU4pzH_yrQM1ukFR2_aOgyYe85SUY7pTk';

  final GenerativeModel model =GenerativeModel(
    model: 'gemini-2.5-flash',
    apiKey: apiKey
  );

  Future<String> sendMessage(String message) async{

    try{
      final response=await model.generateContent([
        Content.text(message),
      ]);
      return response.text ?? 'No response';
    }catch(e){
      return e.toString();
    }
  }
}