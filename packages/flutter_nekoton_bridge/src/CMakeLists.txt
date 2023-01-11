# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_nekoton_bridge_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_nekoton_bridge SHARED
  "flutter_nekoton_bridge.c"
)

set_target_properties(flutter_nekoton_bridge PROPERTIES
  PUBLIC_HEADER flutter_nekoton_bridge.h
  OUTPUT_NAME "flutter_nekoton_bridge"
)

target_compile_definitions(flutter_nekoton_bridge PUBLIC DART_SHARED_LIB)
