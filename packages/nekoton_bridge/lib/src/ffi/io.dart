import 'dart:ffi';

import 'package:nekoton_bridge/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

NekotonBridge createWrapperImpl(ExternalLibrary dylib) =>
    NekotonBridgeImpl(dylib);
