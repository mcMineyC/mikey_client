import "dart:convert";

import "package:get/get.dart";
import "package:mikey_client/controllers/config.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:web_socket_channel/web_socket_channel.dart";

import "../constants.dart";

class SocketController extends GetxController {
  late WebSocketChannel sock;
  RxBool _connected = false.obs;
  ConfigController config = Get.find<ConfigController>();

  SocketController(String socketUrl) {
    sock = WebSocketChannel.connect(
      Uri.parse(socketUrl.replaceFirst("http://", "ws://")),
    );
    sock.ready.then((_) => _connected.value = true);
    sock.stream.listen(messageReceived);
    ever(_connected, (val) {
      if (val) {
        print("\tWebsocket connected");
        sendMessage({
          "clientId": config.clientId,
          "clientName": config.clientName,
          "role": "client",
        });
      } else {
        print("\tWebsocket disconnected");
      }
    });
  }

  void messageReceived(dynamic message) {
    if (message.runtimeType != String) message = message.toString();
    if (message[0] != "[" || message[1] != "{") {
      print("\tReceived junk data over WS:\" $message\"");
      return;
    }
    if (message["type"] != null &&
        message["type"] == "helloAck" &&
        message["status"]! == "registered") {
      print("Client registered w/ server successfully!");
    }
  }

  void sendMessage(dynamic message) {
    String jsonMessage;
    jsonMessage = jsonEncode(message);
    sock.sink.add(jsonMessage);
  }

  bool get connected => _connected.value;
}
