import 'package:chat_gpt/models/question_model.dart';
import 'package:dio/dio.dart';

class ChatServices {
  final Dio dio;
  final String geminiApiKey = 'AIzaSyDbCNtcltXwuf8PjsGAIlUaYGEkVZyviJU';
  late final String url =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=$geminiApiKey";

  ChatServices({required this.dio});

  Future<QuestionModel> sendQuestion(String titleOfQuestion) async {
    print('${titleOfQuestion}');
    try {
      final response = await dio.post(
        url,
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {
          "contents": [
            {
              "parts": [
                {"text": titleOfQuestion},
              ],
            },
          ],
        },
      );

      return QuestionModel(
        title: titleOfQuestion,
        anser: response.data['candidates'][0]['content']['parts'][0]['text'],
      );

      //  print(Response.data);
    } on DioException catch (e) {
      final String message = e.response?.data["error"]["message"] ?? 'error ';
      print(message);
    } catch (e) {
      throw Exception("Something went wrong, try again later");
    }

    throw Exception('error');
  }
}
