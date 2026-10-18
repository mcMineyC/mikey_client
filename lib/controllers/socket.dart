import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:web_socket_channel/web_socket_channel.dart";

import "../constants.dart";

class SocketController extends GetxController {
  late WebSocketChannel sock;
  RxBool _connected = false.obs;

  SocketController(String socketUrl) {
    sock = WebSocketChannel.connect(
      Uri.parse(socketUrl.replaceFirst("http://", "ws://")),
    );
    sock.ready.then((_) => _connected.value = true);
    sock.stream.listen(messageReceived);
    ever(
      _connected,
      (_) => print("\tWebsocket ${connected ? "connected" : "disconnected"}"),
    );
  }

  void messageReceived(dynamic message) {
    if (message.runtimeType != String) message = message.toString;
    if (message[0] != "[" || message[1] != "{") {
      print("\tReceived junk data over WS:\" $message\"");
      return;
    }
  }

  void sendMessage(dynamic message) {
    sock.sink.add(message);
  }

  bool get connected => _connected.value;
}
