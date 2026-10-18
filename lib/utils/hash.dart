import "dart:convert";

import "package:crypto/crypto.dart";

String md5Hash(String value) => md5.convert(utf8.encode(value)).toString();
