import 'dart:convert';
import 'dart:io';

import 'package:cusmerraj/api_service/DebugFunctions/securedPrint.dart';
import 'package:cusmerraj/api_service/Remote/Api_CommonFunction/apiException.dart';
import 'package:cusmerraj/api_service/Remote/network/BaseApiService.dart';
import 'package:http/http.dart' as http;

//------------------------------------------------------------------------------------------------------------------------------------------------

class NetworkApiService extends BaseApiService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(baseUrl + url));

      /// --->(baseUrl + url) -- https://fakestoreapi.com/ + products
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
  //------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> getWithoutParam(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(baseUrl + url));
      SecurePrint(response.request?.url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
//------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> getWithoutParamHeader(String url) async {
    // print("UT::${appConstants.userToken.value}");
    var responseJson;
    // var token = appConstants.userToken.value;
    //
    // appConstants.userToken.value = token;
    // SecurePrint("TOKEN::${appConstants.userToken.value}");
    try {
      final response = await http.get(
        Uri.parse(baseUrl + url),
        headers: {
          "Authorization":
              // "Bearer ${token ?? "419|BLcbOfyARLEQuV2XGMTxmqrTxGRaWj7Ibo3PcQRS"} "
              "Bearer ${"///YOUR TOKEN NAME/// " ?? "419|BLcbOfyARLEQuV2XGMTxmqrTxGRaWj7Ibo3PcQRS"} "
        },
      );
      SecurePrint(response.request?.url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
//------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> getWithParam(String url, Map<String, dynamic> body) async {
    var responseJson;
    try {
      final uri = Uri.parse(baseUrl + url).replace(queryParameters: body);
      final response = await http.get(uri);
      SecurePrint(response.request?.url); //_baseUrl +
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
//------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> postWithOutParam(String url) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(baseUrl + url));
      SecurePrint(response.request?.url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
//------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> postWithParam(String url, Map<String, dynamic> body) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(baseUrl + url), body: body);
      SecurePrint(response.request?.url);
      SecurePrint(body);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
//------------------------------------------------------------------------------------------------------------------------------------------------

  Future<dynamic> postWithParamImageUpload(
      String url, Map<String, String> body, File file) async {
    var responseJson;
    try {
      final responseData =
          http.MultipartRequest("POST", Uri.parse(baseUrl + url));
      responseData.fields.addAll(body);
      responseData.files
          .add(await http.MultipartFile.fromPath('file', file.path));
      final uploadImage = await responseData.send();
      final response = await http.Response.fromStream(uploadImage);
      //final response = await http.post(Uri.parse(appConstants.getBaseURL() + url), body: body);
      SecurePrint(response.request?.url);
      SecurePrint(response.statusCode);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        SecurePrint(responseJson);
        return responseJson;

      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
        //ReusableSnackBar.showSnakbar(NavigationService.navigatorKey.currentContext!, "Server Error", SnackbarType.negative);
        return;
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  //------------------------------------------------------------------------------------------------------------------------------------------------
  ///YUVARAJ CODE
  Future<dynamic> postWithParam1(String url, Map<String, dynamic> body) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(baseUrl + url), body: body);
      SecurePrint(response.request?.url);
      SecurePrint(body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

//------------------------------------------------------------------------------------------------------------------------------------------------
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communication with server' +
                ' with status code : ${response.statusCode}');
    }
  }
}

NetworkApiService networkApiService = NetworkApiService();
