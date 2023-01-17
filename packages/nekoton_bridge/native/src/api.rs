#![allow(unused_variables)]

// use std::fmt::Debug;
// use std::ops::Deref;
// use std::sync::atomic::{AtomicI32, Ordering};
// use std::sync::Arc;
// pub use std::sync::{Mutex, RwLock};
// use std::thread::sleep;
// use std::time::Duration;

// use anyhow::{anyhow, Result};

use flutter_rust_bridge::*;
// use lazy_static::lazy_static;

// use crate::data::{EnumAlias, Id, MyEnum, MyStruct, StructAlias, UserIdAlias};
// pub use crate::data::{FrbOpaqueReturn, FrbOpaqueSyncReturn, HideData, NonSendHideData};
// use crate::new_module_system::{use_new_module_system, NewSimpleStruct};
// use crate::old_module_system::{use_old_module_system, OldSimpleStruct};

pub fn simple_adder_sync(a: i32, b: i32) -> SyncReturn<i32> {
  SyncReturn(a + b)
}

pub fn simple_adder(a: i32, b: i32) -> i32 {
  a + b
}

pub trait MyFormat {
  fn my_format(&self) -> String;
}

impl MyFormat for i32 {
  fn my_format(&self) -> String {
      return format!("i32 {}", self)
  }
}

pub struct MyClass {
  pub val: i32
}

impl MyClass {
  pub fn new(a: i32) -> MyClass {
    MyClass {
      val: a
    }
  }
  pub fn my_format(&self) -> String {
    return self.val.my_format();
  }
}
