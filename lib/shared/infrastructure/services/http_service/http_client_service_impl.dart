import 'package:dio/dio.dart';
import 'package:template_clean_arch/shared/infrastructure/services/http_service/http_client_erros.dart';
import 'package:template_clean_arch/shared/infrastructure/services/http_service/http_client_service.dart';

class HttpClientServiceImpl extends HttpClientService{

  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://urldeprueba.com'
    )
  );

  @override
  Future post({required String path, required Map<String, dynamic> data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response.data;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) throw HttpClientErros(message: '${e.message}');
    }
  }

}