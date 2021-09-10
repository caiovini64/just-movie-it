import 'dart:convert';

import 'package:http/http.dart';
import 'package:just_movie_it/data/http/http_client.dart';

class HttpAdapter implements HttpClient {
  final Client client;
  HttpAdapter(this.client);

  @override
  Future<HttpResponse> get(String url) async {
    final Response response = await client.get(Uri.parse(url));
    return HttpResponse(data: response.body, statusCode: response.statusCode);
  }

  @override
  Future<HttpResponse> post(String url,
      {required Map<String, dynamic> body}) async {
    final Response response = await client.post(
      Uri.parse(url),
      body: jsonEncode(body),
    );
    return HttpResponse(data: response.body, statusCode: response.statusCode);
  }
}
