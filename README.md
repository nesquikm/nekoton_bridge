# Nekoton bridge for flutter

This package based on [flutter_rust_bridge](https://cjycode.com/flutter_rust_bridge) generator.

## Getting Started 🚀

You should start installing the main things:
* [Flutter](https://docs.flutter.dev/get-started/install)
* [Rust](https://www.rust-lang.org/learn/get-started)

Then your adventure continues by installing dependencies:

```
cargo install flutter_rust_bridge_codegen
flutter pub add --dev ffigen && flutter pub add ffi
cargo install cargo-xcode
flutter pub add flutter_rust_bridge
flutter pub add -d build_runner
flutter pub add -d freezed
flutter pub add freezed_annotation
dart pub global activate melos
```

At this point, all preparations should be completed and we can start compiling the library.

## Melos magic 	🪄

Using [melos](https://melos.invertase.dev/) makes it very easy to work with the project, so enjoy:

### Bootstrap 🏁

Melos takes care about dependencies of all packages, including managing of local-generated library version. So, just run:

```
melos bs
```

### Build 🪛

The library consists of dart files and platform-specific binaries. pub.dev has a hard 100 MB upload limit, so we can't distribute platform-specific (they can be really huge!) this way. So, we should use something like Github releases for distribute it. Commands below will build everything for two platforms:

```
melos run build:apple
melos run build:android
```

You can find `platform-build/NekotonBridge.xcframework.zip` and `platform-build/android.tar.gz` in case of success. Rust build cache will be in `target/` directory.

### Clean up 🧹

Just run commands below to clean all, including build directories and flutter projects.

```
melos clean
```

## Example 🤡

You can find dumbest example in `packages/flutter_nekoton_bridge/example`. During build scripts will copy platform-specific binaries from `platform-build/` folder, or download prebuild binaries from github (if you don't build binaries locally).

You can open the project in Android studio or Visual studio code, or even build and run it using `flutter run`.

### iOS build 

Please don't forget to install pods if you don't use flutter run.

```
pod install
```

During build scripts copies platform-specific binaries to `packages/flutter_nekoton_bridge/ios/Frameworks/netokon_bridge*.zip` and unpack it to `packages/flutter_nekoton_bridge/ios/Frameworks/NekotonBridge.xcframework/`. It's a good idea to check this things if something went wrong.

### Android build 🤖

During build scripts copies platform-specific binaries to `packages/flutter_nekoton_bridge/android/netokon_bridge.tar.gz` and unpack it to `packages/flutter_nekoton_bridge/android/src/main/jniLibs/`. It's also a good idea to check this things if something went wrong.

## Conventional Commits ❤️

[This magic](https://melos.invertase.dev/guides/automated-releases#versioning) will update version and build our library automatically using commit messages and tags. This has not yet been implemented, so you can just look forward to this feature in near future :)
