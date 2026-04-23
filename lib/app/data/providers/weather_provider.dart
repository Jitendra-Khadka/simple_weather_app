import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;

class WeatherProvider {
  final String apiKey = dotenv.get("api_key");
  final String baseUrl = dotenv.get("base_uri");

  Future<http.Response> getWeather(String city) async {
    final uri = Uri.http(baseUrl, '/v1/current.json', {'key': apiKey, 'q': city});
    return await http.get(uri);
  }

  Future<http.Response> getCity(String filter) async {
    final uri = Uri.http(baseUrl, '/v1/search.json', {'key': apiKey, 'q': filter});
    return await http.get(uri);
  }
}