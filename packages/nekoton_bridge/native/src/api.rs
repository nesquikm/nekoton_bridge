#![allow(unused_variables)]

use flutter_rust_bridge::*;

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
