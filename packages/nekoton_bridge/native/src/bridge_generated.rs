#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_init_logger_impl(
    port_: MessagePort,
    debug: impl Wire2Api<bool> + UnwindSafe,
    mobile_logger: impl Wire2Api<bool> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "init_logger",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_debug = debug.wire2api();
            let api_mobile_logger = mobile_logger.wire2api();
            move |task_callback| Ok(init_logger(api_debug, api_mobile_logger))
        },
    )
}
fn wire_create_log_stream_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_log_stream",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || move |task_callback| Ok(create_log_stream(task_callback.stream_sink())),
    )
}
fn wire_simple_log_impl(port_: MessagePort, string: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_log",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_string = string.wire2api();
            move |task_callback| Ok(simple_log(api_string))
        },
    )
}
fn wire_simple_panic_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_panic",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(simple_panic()),
    )
}
fn wire_simple_adder_sync_impl(
    a: impl Wire2Api<i32> + UnwindSafe,
    b: impl Wire2Api<i32> + UnwindSafe,
) -> support::WireSyncReturn {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "simple_adder_sync",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_a = a.wire2api();
            let api_b = b.wire2api();
            Ok(simple_adder_sync(api_a, api_b))
        },
    )
}
fn wire_simple_adder_impl(
    port_: MessagePort,
    a: impl Wire2Api<i32> + UnwindSafe,
    b: impl Wire2Api<i32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "simple_adder",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_a = a.wire2api();
            let api_b = b.wire2api();
            move |task_callback| Ok(simple_adder(api_a, api_b))
        },
    )
}
fn wire_new__static_method__MyClass_impl(port_: MessagePort, a: impl Wire2Api<i32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new__static_method__MyClass",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_a = a.wire2api();
            move |task_callback| Ok(MyClass::new(api_a))
        },
    )
}
fn wire_my_format__method__MyClass_impl(
    port_: MessagePort,
    that: impl Wire2Api<MyClass> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "my_format__method__MyClass",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(MyClass::my_format(&api_that))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for LogEntry {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.time_millis.into_dart(),
            self.level.into_dart(),
            self.tag.into_dart(),
            self.msg.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for LogEntry {}

impl support::IntoDart for MyClass {
    fn into_dart(self) -> support::DartAbi {
        vec![self.val.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for MyClass {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
mod web {
    use super::*;
    // Section: wire functions

    #[wasm_bindgen]
    pub fn wire_init_logger(port_: MessagePort, debug: bool, mobile_logger: bool) {
        wire_init_logger_impl(port_, debug, mobile_logger)
    }

    #[wasm_bindgen]
    pub fn wire_create_log_stream(port_: MessagePort) {
        wire_create_log_stream_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_simple_log(port_: MessagePort, string: String) {
        wire_simple_log_impl(port_, string)
    }

    #[wasm_bindgen]
    pub fn wire_simple_panic(port_: MessagePort) {
        wire_simple_panic_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_simple_adder_sync(a: i32, b: i32) -> support::WireSyncReturn {
        wire_simple_adder_sync_impl(a, b)
    }

    #[wasm_bindgen]
    pub fn wire_simple_adder(port_: MessagePort, a: i32, b: i32) {
        wire_simple_adder_impl(port_, a, b)
    }

    #[wasm_bindgen]
    pub fn wire_new__static_method__MyClass(port_: MessagePort, a: i32) {
        wire_new__static_method__MyClass_impl(port_, a)
    }

    #[wasm_bindgen]
    pub fn wire_my_format__method__MyClass(port_: MessagePort, that: JsValue) {
        wire_my_format__method__MyClass_impl(port_, that)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<MyClass> for JsValue {
        fn wire2api(self) -> MyClass {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                1,
                "Expected 1 elements, got {}",
                self_.length()
            );
            MyClass {
                val: self_.get(0).wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for Box<[u8]> {
        fn wire2api(self) -> Vec<u8> {
            self.into_vec()
        }
    }
    // Section: impl Wire2Api for JsValue

    impl Wire2Api<String> for JsValue {
        fn wire2api(self) -> String {
            self.as_string().expect("non-UTF-8 string, or not a string")
        }
    }
    impl Wire2Api<bool> for JsValue {
        fn wire2api(self) -> bool {
            self.is_truthy()
        }
    }
    impl Wire2Api<i32> for JsValue {
        fn wire2api(self) -> i32 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<u8> for JsValue {
        fn wire2api(self) -> u8 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<Vec<u8>> for JsValue {
        fn wire2api(self) -> Vec<u8> {
            self.unchecked_into::<js_sys::Uint8Array>().to_vec().into()
        }
    }
}
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
mod io {
    use super::*;
    // Section: wire functions

    #[no_mangle]
    pub extern "C" fn wire_init_logger(port_: i64, debug: bool, mobile_logger: bool) {
        wire_init_logger_impl(port_, debug, mobile_logger)
    }

    #[no_mangle]
    pub extern "C" fn wire_create_log_stream(port_: i64) {
        wire_create_log_stream_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_log(port_: i64, string: *mut wire_uint_8_list) {
        wire_simple_log_impl(port_, string)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_panic(port_: i64) {
        wire_simple_panic_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_adder_sync(a: i32, b: i32) -> support::WireSyncReturn {
        wire_simple_adder_sync_impl(a, b)
    }

    #[no_mangle]
    pub extern "C" fn wire_simple_adder(port_: i64, a: i32, b: i32) {
        wire_simple_adder_impl(port_, a, b)
    }

    #[no_mangle]
    pub extern "C" fn wire_new__static_method__MyClass(port_: i64, a: i32) {
        wire_new__static_method__MyClass_impl(port_, a)
    }

    #[no_mangle]
    pub extern "C" fn wire_my_format__method__MyClass(port_: i64, that: *mut wire_MyClass) {
        wire_my_format__method__MyClass_impl(port_, that)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_my_class_0() -> *mut wire_MyClass {
        support::new_leak_box_ptr(wire_MyClass::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
        let ans = wire_uint_8_list {
            ptr: support::new_leak_vec_ptr(Default::default(), len),
            len,
        };
        support::new_leak_box_ptr(ans)
    }

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for *mut wire_uint_8_list {
        fn wire2api(self) -> String {
            let vec: Vec<u8> = self.wire2api();
            String::from_utf8_lossy(&vec).into_owned()
        }
    }

    impl Wire2Api<MyClass> for *mut wire_MyClass {
        fn wire2api(self) -> MyClass {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<MyClass>::wire2api(*wrap).into()
        }
    }

    impl Wire2Api<MyClass> for wire_MyClass {
        fn wire2api(self) -> MyClass {
            MyClass {
                val: self.val.wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
        fn wire2api(self) -> Vec<u8> {
            unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            }
        }
    }
    // Section: wire structs

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_MyClass {
        val: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_uint_8_list {
        ptr: *mut u8,
        len: i32,
    }

    // Section: impl NewWithNullPtr

    pub trait NewWithNullPtr {
        fn new_with_null_ptr() -> Self;
    }

    impl<T> NewWithNullPtr for *mut T {
        fn new_with_null_ptr() -> Self {
            std::ptr::null_mut()
        }
    }

    impl NewWithNullPtr for wire_MyClass {
        fn new_with_null_ptr() -> Self {
            Self {
                val: Default::default(),
            }
        }
    }

    // Section: sync execution mode utility

    #[no_mangle]
    pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
        unsafe {
            let _ = support::box_from_leak_ptr(ptr);
        };
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;
