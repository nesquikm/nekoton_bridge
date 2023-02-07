// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

abstract class NekotonBridge {
  /// Init logger
  Future<void> initLogger(
      {required LogLevel level, required bool mobileLogger, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitLoggerConstMeta;

  /// Create log stream
  Stream<LogEntry> createLogStream({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateLogStreamConstMeta;

  Future<void> simpleLog({required String string, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSimpleLogConstMeta;

  Future<void> simplePanic({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSimplePanicConstMeta;

  int simpleAdderSync({required int a, required int b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSimpleAdderSyncConstMeta;

  Future<int> simpleAdder({required int a, required int b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSimpleAdderConstMeta;

  Future<MyClass> newStaticMethodMyClass({required int a, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodMyClassConstMeta;

  Future<String> myFormatMethodMyClass({required MyClass that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kMyFormatMethodMyClassConstMeta;
}

/// Log entry
class LogEntry {
  final int timeMillis;
  final LogLevel level;
  final String tag;
  final String msg;

  LogEntry({
    required this.timeMillis,
    required this.level,
    required this.tag,
    required this.msg,
  });
}

enum LogLevel {
  Trace,
  Debug,
  Info,
  Warn,
  Error,
}

class MyClass {
  final NekotonBridge bridge;
  final int val;

  MyClass({
    required this.bridge,
    required this.val,
  });

  static Future<MyClass> newMyClass(
          {required NekotonBridge bridge, required int a, dynamic hint}) =>
      bridge.newStaticMethodMyClass(a: a, hint: hint);

  Future<String> myFormat({dynamic hint}) => bridge.myFormatMethodMyClass(
        that: this,
      );
}

class NekotonBridgeImpl implements NekotonBridge {
  final NekotonBridgePlatform _platform;
  factory NekotonBridgeImpl(ExternalLibrary dylib) =>
      NekotonBridgeImpl.raw(NekotonBridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NekotonBridgeImpl.wasm(FutureOr<WasmModule> module) =>
      NekotonBridgeImpl(module as ExternalLibrary);
  NekotonBridgeImpl.raw(this._platform);
  Future<void> initLogger(
      {required LogLevel level, required bool mobileLogger, dynamic hint}) {
    var arg0 = api2wire_log_level(level);
    var arg1 = mobileLogger;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_init_logger(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kInitLoggerConstMeta,
      argValues: [level, mobileLogger],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitLoggerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "init_logger",
        argNames: ["level", "mobileLogger"],
      );

  Stream<LogEntry> createLogStream({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_create_log_stream(port_),
      parseSuccessData: _wire2api_log_entry,
      constMeta: kCreateLogStreamConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCreateLogStreamConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "create_log_stream",
        argNames: [],
      );

  Future<void> simpleLog({required String string, dynamic hint}) {
    var arg0 = _platform.api2wire_String(string);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_simple_log(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSimpleLogConstMeta,
      argValues: [string],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSimpleLogConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "simple_log",
        argNames: ["string"],
      );

  Future<void> simplePanic({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_simple_panic(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kSimplePanicConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSimplePanicConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "simple_panic",
        argNames: [],
      );

  int simpleAdderSync({required int a, required int b, dynamic hint}) {
    var arg0 = api2wire_i32(a);
    var arg1 = api2wire_i32(b);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_simple_adder_sync(arg0, arg1),
      parseSuccessData: _wire2api_i32,
      constMeta: kSimpleAdderSyncConstMeta,
      argValues: [a, b],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSimpleAdderSyncConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "simple_adder_sync",
        argNames: ["a", "b"],
      );

  Future<int> simpleAdder({required int a, required int b, dynamic hint}) {
    var arg0 = api2wire_i32(a);
    var arg1 = api2wire_i32(b);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_simple_adder(port_, arg0, arg1),
      parseSuccessData: _wire2api_i32,
      constMeta: kSimpleAdderConstMeta,
      argValues: [a, b],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSimpleAdderConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "simple_adder",
        argNames: ["a", "b"],
      );

  Future<MyClass> newStaticMethodMyClass({required int a, dynamic hint}) {
    var arg0 = api2wire_i32(a);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_new__static_method__MyClass(port_, arg0),
      parseSuccessData: (d) => _wire2api_my_class(d),
      constMeta: kNewStaticMethodMyClassConstMeta,
      argValues: [a],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodMyClassConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new__static_method__MyClass",
        argNames: ["a"],
      );

  Future<String> myFormatMethodMyClass({required MyClass that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_my_class(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_my_format__method__MyClass(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kMyFormatMethodMyClassConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kMyFormatMethodMyClassConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "my_format__method__MyClass",
        argNames: ["that"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }

  LogEntry _wire2api_log_entry(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return LogEntry(
      timeMillis: _wire2api_i64(arr[0]),
      level: _wire2api_log_level(arr[1]),
      tag: _wire2api_String(arr[2]),
      msg: _wire2api_String(arr[3]),
    );
  }

  LogLevel _wire2api_log_level(dynamic raw) {
    return LogLevel.values[raw];
  }

  MyClass _wire2api_my_class(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return MyClass(
      bridge: this,
      val: _wire2api_i32(arr[0]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_log_level(LogLevel raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
