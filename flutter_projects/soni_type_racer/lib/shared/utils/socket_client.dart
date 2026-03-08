import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketClient {
  io.Socket? socket;
  static SocketClient? _instance = SocketClient._internal();

  SocketClient._internal() {
    //  255.255.240.0[Subnet]
    //  fe80::8f66:9eee:404c:7291%8[IPv6]
    socket = io.io('172.24.16.189', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
