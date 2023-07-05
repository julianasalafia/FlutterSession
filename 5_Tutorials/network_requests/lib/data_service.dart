import 'package:http/http.dart' as http;

class DataService {
  Future<String> makeRequestToApi() async {
    final uri = Uri.https(
      'lucifer-quotes.vercel.app',
      '/api/quotes/5',
    );
    final response = await http.get(uri);

    return response.body;
  }
}
