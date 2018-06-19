///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library helloworld_helloworld;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class Empty extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Empty')
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => new Empty()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Empty create() => new Empty();
  static PbList<Empty> createRepeated() => new PbList<Empty>();
  static Empty getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyEmpty();
    return _defaultInstance;
  }
  static Empty _defaultInstance;
  static void $checkItem(Empty v) {
    if (v is! Empty) checkItemFailed(v, 'Empty');
  }
}

class _ReadonlyEmpty extends Empty with ReadonlyMessageMixin {}

class HelloResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('HelloResponse')
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  HelloResponse() : super();
  HelloResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HelloResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HelloResponse clone() => new HelloResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static HelloResponse create() => new HelloResponse();
  static PbList<HelloResponse> createRepeated() => new PbList<HelloResponse>();
  static HelloResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyHelloResponse();
    return _defaultInstance;
  }
  static HelloResponse _defaultInstance;
  static void $checkItem(HelloResponse v) {
    if (v is! HelloResponse) checkItemFailed(v, 'HelloResponse');
  }

  String get message => $_getS(0, '');
  set message(String v) { $_setString(0, v); }
  bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

class _ReadonlyHelloResponse extends HelloResponse with ReadonlyMessageMixin {}

