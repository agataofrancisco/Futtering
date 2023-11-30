import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';


String secret = "teste";

main(){
   //header
  var header = {
    "alg": "HS256",
    "typ": "jwt",
  };

  String header64 = base64Encode(jsonEncode(header).codeUnits);

   //payload
    var payload = {
      "sub": 1,
      "name": "agatao",
      "exp": DateTime.now().microsecondsSinceEpoch + 60000,
    };

    String payload64 = base64Encode(jsonEncode(header).codeUnits);
   //assinatura
    //e necessario instalar a lib crypto
    var hmac = Hmac(sha256, secret.codeUnits);
    var digest = hmac.convert("$header64.$payload64".codeUnits);
    String sign = base64Encode(digest.bytes);

    print("$header64.$payload64.$sign");
}