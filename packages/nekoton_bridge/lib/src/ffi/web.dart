import 'package:nekoton_bridge/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

NekotonBridge createWrapperImpl(ExternalLibrary module) =>
    NekotonBridgeImpl.wasm(module);
