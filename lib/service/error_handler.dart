import 'package:get/get_connect/http/src/response/response.dart';

dynamic errorHandler(Response response) {
  print(response.toString());
  switch (response.statusCode) {
    case 200:
    case 201:
    case 202:
      var responseJson = response.body.toString();
      return responseJson;
    case 500:
      throw "Server Error pls retry later";
    case 403:
      throw 'Error occurred pls check internet and retry.';
    case 500:
    default:
      throw 'Error occurred retry';
  }
}

