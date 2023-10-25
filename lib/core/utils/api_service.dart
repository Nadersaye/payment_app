import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post(
      {required body,
      required String token,
      required String url,
      String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
            contentType: contentType,
            headers: {'Authorization': "Bearer $token"}));
    return response;
  }
}
