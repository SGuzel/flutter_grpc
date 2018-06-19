///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library helloworld_helloworld_pbgrpc;

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'helloworld.pb.dart';
export 'helloworld.pb.dart';

class GreeterClient extends Client {
  static final _$sayHello = new ClientMethod<Empty, HelloResponse>(
      '/helloworld.Greeter/sayHello',
      (Empty value) => value.writeToBuffer(),
      (List<int> value) => new HelloResponse.fromBuffer(value));

  GreeterClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<HelloResponse> sayHello(Empty request, {CallOptions options}) {
    final call = $createCall(_$sayHello, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class GreeterServiceBase extends Service {
  String get $name => 'helloworld.Greeter';

  GreeterServiceBase() {
    $addMethod(new ServiceMethod<Empty, HelloResponse>(
        'sayHello',
        sayHello_Pre,
        false,
        false,
        (List<int> value) => new Empty.fromBuffer(value),
        (HelloResponse value) => value.writeToBuffer()));
  }

  Future<HelloResponse> sayHello_Pre(ServiceCall call, Future request) async {
    return sayHello(call, await request);
  }

  Future<HelloResponse> sayHello(ServiceCall call, Empty request);
}
