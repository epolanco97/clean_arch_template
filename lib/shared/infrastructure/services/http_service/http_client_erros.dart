class HttpClientErros implements Exception {
  int? statusCode;
  String message;

  HttpClientErros({this.statusCode, required this.message});
}