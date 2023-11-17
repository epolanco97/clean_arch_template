abstract class HttpClientService {
  Future<dynamic> post({required String path, required Map<String,dynamic> data});
}