import 'dart:async';


import 'package:Greeter/proto/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import 'package:grpc/grpc.dart' as grpc;
import 'dart:math';

class GreeterService extends GreeterServiceBase {
  List<String> slist = [];
   Random _r;

  GreeterService(){ 
    slist.add("Guten Tag");
    slist.add("Hello");
    slist.add("Merhaba");
    slist.add("Buenos dias");
    slist.add("Selam");
    slist.add("Grüss Gott");
    _r = new Random(slist.length);
  }

  @override
  Future<HelloResponse> sayHello(ServiceCall call, Empty request) async {
     return new HelloResponse()..message =slist[_r.nextInt(slist.length)];
  }
}


class Server {
  Future<Null> main(List<String> args) async {
    final server = new grpc.Server([new GreeterService()]);
    await server.serve( address: "localhost", port: 50051);
    print('Server listening on port ${server.port}...');
  }
}


main(List<String> args) async {
  await new Server().main(args);
}


