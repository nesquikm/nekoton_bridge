// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class NekotonBridgePlatform extends FlutterRustBridgeBase<NekotonBridgeWire> {
  NekotonBridgePlatform(ffi.DynamicLibrary dylib)
      : super(NekotonBridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_MyClass> api2wire_box_autoadd_my_class(MyClass raw) {
    final ptr = inner.new_box_autoadd_my_class_0();
    _api_fill_to_wire_my_class(raw, ptr.ref);
    return ptr;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_my_class(
      MyClass apiObj, ffi.Pointer<wire_MyClass> wireObj) {
    _api_fill_to_wire_my_class(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_my_class(MyClass apiObj, wire_MyClass wireObj) {
    wireObj.val = api2wire_i32(apiObj.val);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class NekotonBridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NekotonBridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NekotonBridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  WireSyncReturn wire_simple_adder_sync(
    int a,
    int b,
  ) {
    return _wire_simple_adder_sync(
      a,
      b,
    );
  }

  late final _wire_simple_adder_syncPtr = _lookup<
          ffi.NativeFunction<WireSyncReturn Function(ffi.Int32, ffi.Int32)>>(
      'wire_simple_adder_sync');
  late final _wire_simple_adder_sync = _wire_simple_adder_syncPtr
      .asFunction<WireSyncReturn Function(int, int)>();

  void wire_simple_adder(
    int port_,
    int a,
    int b,
  ) {
    return _wire_simple_adder(
      port_,
      a,
      b,
    );
  }

  late final _wire_simple_adderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Int32, ffi.Int32)>>('wire_simple_adder');
  late final _wire_simple_adder =
      _wire_simple_adderPtr.asFunction<void Function(int, int, int)>();

  void wire_new__static_method__MyClass(
    int port_,
    int a,
  ) {
    return _wire_new__static_method__MyClass(
      port_,
      a,
    );
  }

  late final _wire_new__static_method__MyClassPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32)>>(
          'wire_new__static_method__MyClass');
  late final _wire_new__static_method__MyClass =
      _wire_new__static_method__MyClassPtr
          .asFunction<void Function(int, int)>();

  void wire_my_format__method__MyClass(
    int port_,
    ffi.Pointer<wire_MyClass> that,
  ) {
    return _wire_my_format__method__MyClass(
      port_,
      that,
    );
  }

  late final _wire_my_format__method__MyClassPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_MyClass>)>>('wire_my_format__method__MyClass');
  late final _wire_my_format__method__MyClass =
      _wire_my_format__method__MyClassPtr
          .asFunction<void Function(int, ffi.Pointer<wire_MyClass>)>();

  ffi.Pointer<wire_MyClass> new_box_autoadd_my_class_0() {
    return _new_box_autoadd_my_class_0();
  }

  late final _new_box_autoadd_my_class_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_MyClass> Function()>>(
          'new_box_autoadd_my_class_0');
  late final _new_box_autoadd_my_class_0 = _new_box_autoadd_my_class_0Ptr
      .asFunction<ffi.Pointer<wire_MyClass> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_MyClass extends ffi.Struct {
  @ffi.Int32()
  external int val;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
