// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class InternetServices {
  static final Duration _CONNECTIVITY_TIMEOUT = Duration(seconds: 5);

  static Future<bool> checkConnectivity() async {
    try {
      // ConnectivityResult conn = await Connectivity().checkConnectivity();
      // if (conn != ConnectivityResult.wifi &&
      //     conn != ConnectivityResult.mobile) {
      //   return false;
      // }
      final result = await InternetAddress.lookup('google.com')
          .timeout(_CONNECTIVITY_TIMEOUT);
      if (result.isNotEmpty && result.first.rawAddress.isNotEmpty == true) {
        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  static makePatchRequest({apiUrl, data}) async {
    print(apiUrl);
    //var token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    var token = null;
    final uri = Uri.parse(apiUrl);
    final jsonString = json.encode(data);
    var headers;

    if (token == null) {
      //   print('no auth');
      headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    } else {
      headers = {
        "Content-Type": "application/json",
        'Authorization': 'JWT $token',
      };
    }

    return await http.patch(uri, body: jsonString, headers: headers);
  }

  static makeDeleteRequest({apiUrl}) async {
    print(apiUrl);
    //var token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    var token = null;
    final uri = Uri.parse(apiUrl);
    var headers;

    if (token == null) {
      //   print('no auth');
      headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    } else {
      headers = {
        "Content-Type": "application/json",
        'Authorization': 'JWT $token',
      };
    }

    return await http.delete(uri, headers: headers);
  }

  static makePutRequest({apiUrl, data}) async {
    print(apiUrl);
    //var token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    var token = null;
    final uri = Uri.parse(apiUrl);
    final jsonString = json.encode(data);
    var headers;

    if (token == null) {
      //   print('no auth');
      headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    } else {
      headers = {
        "Content-Type": "application/json",
        'Authorization': 'JWT $token',
      };
    }

    return await http.put(uri, body: jsonString, headers: headers);
  }

  static makePostRequest({apiUrl, data}) async {
    print(apiUrl);
    // var token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    var token = null;
    final uri = Uri.parse(apiUrl);
    final jsonString = json.encode(data);
    var headers;
    if (token == null) {
      //   print('no auth');

      headers = {
        HttpHeaders.contentTypeHeader: "application/json",
      };
    } else {
      //   debugPrint('DDDDDD::::authtoken=>$token');
      headers = {
        "Content-Type": "application/json",
        "Authorization": "JWT $token",
      };
    }
    return await http.post(uri, body: jsonString, headers: headers);
  }

  static makeGetRequest({apiUrl, data}) async {
    print(apiUrl);
    // var token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    var token = null;
    var uri = Uri.parse(apiUrl);
    var headers;
    if (token == null) {
      headers = {
        "Content-Type": "application/json",
      };
    } else {
      headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
        'Authorization': 'JWT $token',
      };
    }

    return await http.get(uri, headers: headers);
  }

  static initialiseGetRequest({data, required String url}) async {
    if (await InternetServices.checkConnectivity()) {
      try {
        var response = await makeGetRequest(apiUrl: url);
        print(response.statusCode);

        if (isRequestSuccessful(response.statusCode)) {
          var body = jsonDecode(response.body);

          return body;
        } else if (response.statusCode.toString() == '403') {
          return 'Session expired, Kindly re-log in';
        } else {
          return handleError(response);
        }
      } catch (e) {
        print(e.toString());
        return e.toString();
      }
    } else {
      return 'Check your internet connection';
    }
  }

  static initialisePostRequest({required data, required String url}) async {
    if (await InternetServices.checkConnectivity()) {
      try {
        print(url);
        print(data);
        var response = await makePostRequest(apiUrl: url, data: data);
        print(response.statusCode);
        print(response.body);

        if (isRequestSuccessful(response.statusCode)) {
          var body = jsonDecode(response.body);
          return body;
        } else if (response.statusCode.toString() == '403') {
          return 'Session expired, Kindly re-log in';
        } else {
          throw (handleError(response));
        }
      } catch (e) {
        if (e.toString().contains('HandshakeException')) {
          throw ('Check your internet connection');
        } else {
          throw (e.toString());
        }
      }
    } else {
      return 'Check your internet connection';
    }
  }

  static initialisePutRequest({required data, required String url}) async {
    if (await InternetServices.checkConnectivity()) {
      try {
        var response = await makePutRequest(apiUrl: url, data: data);
        // print(response.statusCode);
        var body = jsonDecode(response.body);

        if (isRequestSuccessful(response.statusCode)) {
          return body;
        } else if (response.statusCode.toString() == '403') {
          return 'Session expired, Kindly re-log in';
        } else {
          return handleError(response);
        }
      } catch (e) {
        // print(e.toString());
        return e.toString();
      }
    } else {
      return 'Check your internet connection';
    }
  }

  static initialisePatchRequest({required data, required String url}) async {
    if (await InternetServices.checkConnectivity()) {
      try {
        var response = await makePatchRequest(apiUrl: url, data: data);
        // print(response.statusCode);
        var body = jsonDecode(response.body);

        if (isRequestSuccessful(response.statusCode)) {
          return body;
        } else if (response.statusCode.toString() == '403') {
          return 'Session expired, Kindly re-log in';
        } else {
          return handleError(response);
        }
      } catch (e) {
        // print(e.toString());
        return e.toString();
      }
    } else {
      return 'Check your internet connection';
    }
  }

  static initialiseDeleteRequest({required String url}) async {
    if (await InternetServices.checkConnectivity()) {
      try {
        var response = await makeDeleteRequest(apiUrl: url);
        // print(response.statusCode);
        var body = jsonDecode(response.body);

        if (isRequestSuccessful(response.statusCode)) {
          return body;
        } else if (response.statusCode.toString() == '403') {
          return 'Session expired, Kindly re-log in';
        } else {
          return handleError(response);
        }
      } catch (e) {
        // print(e.toString());
        return e.toString();
      }
    } else {
      return 'Check your internet connection';
    }
  }

  static handleError(http.Response response) {
    switch (response.statusCode) {
      case 400:
        throw (jsonDecode(response.body)['message']);

      case 401:
        throw 'Unauthorized request - ${jsonDecode(response.body)['message']}';

      case 403:
        throw 'Forbidden Error - ${jsonDecode(response.body)['message']}';
      case 404:
        throw 'Not Found - ${jsonDecode(response.body)['message']}';

      case 422:
        throw 'Unable to process - ${jsonDecode(response.body)['message']}';

      case 500:
        throw 'Server error - ${jsonDecode(response.body)['message']}';
      default:
        throw 'Error occurred with code : $response';
    }
  }

  static isRequestSuccessful(int? statusCode) {
    return statusCode! >= 200 && statusCode < 300;
  }
}
