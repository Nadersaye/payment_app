import 'package:dio/dio.dart';

import 'payment_keys.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Response> post(
      {required body,
      required String url,
      Map<String, dynamic>? headers,
      String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: headers ??
                {'Authorization': "Bearer ${PaymentKeys.secretKey}"}));
    return response;
  }
}
