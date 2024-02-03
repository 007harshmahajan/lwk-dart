# lwk_dart

A dart/flutter library with language bindings for rust library [lwk](https://github.com/Blockstream/lwk)` - Liquid Wallet Kit.


## Dependencies
Docker is required for linux builds.

```bash
dart pub global activate ffigen
cargo install flutter_rust_bridge_codegen
cargo install cargo-expand
cargo install cargo-ndk
@if [ $$(uname) == "Darwin" ] ; then cargo install cargo-lipo ; fi
```

For ios builds, make sure you have xcode installed.

## Update & Build process

Add new types to `types.rs` and static functions to `api.rs`

api.rs contains an `Api` struct that holds all the static functions.

types.rs structures and enums are also re-exported via api.rs

```bash
# in the project root directory

./compile.native.sh # build for your native platform (linux/macos). adds binary to dart test folder.

```

## MacOS as host

macos as the host machine can build binaries for all platforms using: 

```bash
# requires dockerd running
./compile.all.sh
```

Compile will first build native binaries of the rust code and move them to the dart test folder. 

It will then run flutter_rust_bridge_codegen and generate ffi code in rust and dart. 

### Non-debian linux users

On non-debian systems you will get some errors with the `bridge_generated.dart` files.

Error would be related to:
```rust
  void store_dart_post_cobject(
    int ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }
```

You may need to set the path the clang in CPATH manually.
Run the following:
```bash
export CPATH="$(clang -v 2>&1 | grep "Selected GCC installation" | rev | cut -d' ' -f1 | rev)/include"
```
