import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  final String _baseUrl = "identitytoolkit.googleapis.com";
  final String _firebaseToken = "AIzaSyCDHwHfCFUx5BlGB431wKpD_Gk5uwFoZ_g";

  final storage = new FlutterSecureStorage();

  // Si retornamos algo, es un error, si no, todo bien
  Future<String?> createUser(String email, String password, List roles) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
      'roles': roles
    };

    final url =
        Uri.https(_baseUrl, '/v1/accounts:signUp', {'key': _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));

    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    if (decodeResp.containsKey('idToken')) {
      await storage.write(key: 'token', value: decodeResp['idToken']);
      // Token hay que guardarlo en un lugar seguro
      // decodeResp['idToken'];
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(
        _baseUrl, '/v1/accounts:signInWithPassword', {'key': _firebaseToken});

    final resp = await http.post(url, body: json.encode(authData));

    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    if (decodeResp.containsKey('idToken')) {
      await storage.write(key: 'token', value: decodeResp['idToken']);

      // Token hay que guardarlo en un lugar seguro
      // decodeResp['idToken'];
      return null;
    } else {
      return decodeResp['error']['message'];
    }
  }

  Future logout() async {
    await storage.delete(key: 'token');
    return;
  }

  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
