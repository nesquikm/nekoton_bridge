// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class NekotonBridgePlatform extends FlutterRustBridgeBase<NekotonBridgeWire>
    with FlutterRustBridgeSetupMixin {
  NekotonBridgePlatform(FutureOr<WasmModule> dylib)
      : super(NekotonBridgeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  List<dynamic> api2wire_box_autoadd_my_class(MyClass raw) {
    return api2wire_my_class(raw);
  }

  @protected
  List<dynamic> api2wire_my_class(MyClass raw) {
    return [api2wire_i32(raw.val)];
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external NekotonBridgeWasmModule get wasmModule;

@JS()
@anonymous
class NekotonBridgeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external NekotonBridgeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* int */ wire_simple_adder_sync(int a, int b);

  external dynamic /* void */ wire_simple_adder(
      NativePortType port_, int a, int b);

  external dynamic /* void */ wire_new__static_method__MyClass(
      NativePortType port_, int a);

  external dynamic /* void */ wire_my_format__method__MyClass(
      NativePortType port_, List<dynamic> that);
}

// Section: WASM wire connector

class NekotonBridgeWire
    extends FlutterRustBridgeWasmWireBase<NekotonBridgeWasmModule> {
  NekotonBridgeWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<NekotonBridgeWasmModule>(module));

  dynamic /* int */ wire_simple_adder_sync(int a, int b) =>
      wasmModule.wire_simple_adder_sync(a, b);

  void wire_simple_adder(NativePortType port_, int a, int b) =>
      wasmModule.wire_simple_adder(port_, a, b);

  void wire_new__static_method__MyClass(NativePortType port_, int a) =>
      wasmModule.wire_new__static_method__MyClass(port_, a);

  void wire_my_format__method__MyClass(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_my_format__method__MyClass(port_, that);
}
