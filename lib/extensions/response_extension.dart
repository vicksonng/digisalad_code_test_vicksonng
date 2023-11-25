import 'dart:convert';

import 'package:digisalad_code_test_vicksonng/networks/http_client.dart';

extension ResponseExtension on Response {
  Response decodeData() {
    return Response(
      data: json.decode(data),
      requestOptions: requestOptions,
      statusCode: statusCode,
      statusMessage: statusMessage,
      isRedirect: isRedirect,
      redirects: redirects,
      extra: extra,
      headers: headers,
    );
  }
}
