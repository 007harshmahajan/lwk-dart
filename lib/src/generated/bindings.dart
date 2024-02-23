// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.6.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

class LwkBridgeImpl implements LwkBridge {
  final LwkBridgePlatform _platform;
  factory LwkBridgeImpl(ExternalLibrary dylib) =>
      LwkBridgeImpl.raw(LwkBridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory LwkBridgeImpl.wasm(FutureOr<WasmModule> module) =>
      LwkBridgeImpl(module as ExternalLibrary);
  LwkBridgeImpl.raw(this._platform);
  Future<String> newWalletStaticMethodApi(
      {required String mnemonic,
      required Network network,
      required String dbPath,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(mnemonic);
    var arg1 = api2wire_network(network);
    var arg2 = _platform.api2wire_String(dbPath);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_new_wallet__static_method__Api(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kNewWalletStaticMethodApiConstMeta,
      argValues: [mnemonic, network, dbPath],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewWalletStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new_wallet__static_method__Api",
        argNames: ["mnemonic", "network", "dbPath"],
      );

  Future<void> syncStaticMethodApi(
      {required String walletId, required String electrumUrl, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    var arg1 = _platform.api2wire_String(electrumUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_sync__static_method__Api(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kSyncStaticMethodApiConstMeta,
      argValues: [walletId, electrumUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSyncStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "sync__static_method__Api",
        argNames: ["walletId", "electrumUrl"],
      );

  Future<String> descriptorStaticMethodApi(
      {required String walletId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_descriptor__static_method__Api(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kDescriptorStaticMethodApiConstMeta,
      argValues: [walletId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDescriptorStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "descriptor__static_method__Api",
        argNames: ["walletId"],
      );

  Future<WalletAddress> addressLastUnusedStaticMethodApi(
      {required String walletId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_address_last_unused__static_method__Api(port_, arg0),
      parseSuccessData: _wire2api_wallet_address,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kAddressLastUnusedStaticMethodApiConstMeta,
      argValues: [walletId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kAddressLastUnusedStaticMethodApiConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "address_last_unused__static_method__Api",
            argNames: ["walletId"],
          );

  Future<WalletAddress> addressStaticMethodApi(
      {required String walletId, required int index, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    var arg1 = api2wire_u32(index);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_address__static_method__Api(port_, arg0, arg1),
      parseSuccessData: _wire2api_wallet_address,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kAddressStaticMethodApiConstMeta,
      argValues: [walletId, index],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kAddressStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "address__static_method__Api",
        argNames: ["walletId", "index"],
      );

  Future<Balance> balanceStaticMethodApi(
      {required String walletId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_balance__static_method__Api(port_, arg0),
      parseSuccessData: _wire2api_balance,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kBalanceStaticMethodApiConstMeta,
      argValues: [walletId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kBalanceStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "balance__static_method__Api",
        argNames: ["walletId"],
      );

  Future<List<Tx>> txsStaticMethodApi(
      {required String walletId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_txs__static_method__Api(port_, arg0),
      parseSuccessData: _wire2api_list_tx,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kTxsStaticMethodApiConstMeta,
      argValues: [walletId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTxsStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "txs__static_method__Api",
        argNames: ["walletId"],
      );

  Future<String> buildTxStaticMethodApi(
      {required String walletId,
      required int sats,
      required String outAddress,
      required double absFee,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    var arg1 = _platform.api2wire_u64(sats);
    var arg2 = _platform.api2wire_String(outAddress);
    var arg3 = api2wire_f32(absFee);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_build_tx__static_method__Api(port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kBuildTxStaticMethodApiConstMeta,
      argValues: [walletId, sats, outAddress, absFee],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kBuildTxStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "build_tx__static_method__Api",
        argNames: ["walletId", "sats", "outAddress", "absFee"],
      );

  Future<PsetAmounts> decodeTxStaticMethodApi(
      {required String walletId, required String pset, dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    var arg1 = _platform.api2wire_String(pset);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_decode_tx__static_method__Api(port_, arg0, arg1),
      parseSuccessData: _wire2api_pset_amounts,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kDecodeTxStaticMethodApiConstMeta,
      argValues: [walletId, pset],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDecodeTxStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "decode_tx__static_method__Api",
        argNames: ["walletId", "pset"],
      );

  Future<Uint8List> signTxStaticMethodApi(
      {required String walletId,
      required Network network,
      required String pset,
      required String mnemonic,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(walletId);
    var arg1 = api2wire_network(network);
    var arg2 = _platform.api2wire_String(pset);
    var arg3 = _platform.api2wire_String(mnemonic);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_sign_tx__static_method__Api(port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_uint_8_list,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kSignTxStaticMethodApiConstMeta,
      argValues: [walletId, network, pset, mnemonic],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSignTxStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "sign_tx__static_method__Api",
        argNames: ["walletId", "network", "pset", "mnemonic"],
      );

  Future<String> broadcastTxStaticMethodApi(
      {required String electrumUrl, required Uint8List txBytes, dynamic hint}) {
    var arg0 = _platform.api2wire_String(electrumUrl);
    var arg1 = _platform.api2wire_uint_8_list(txBytes);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_broadcast_tx__static_method__Api(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_lwk_error,
      constMeta: kBroadcastTxStaticMethodApiConstMeta,
      argValues: [electrumUrl, txBytes],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kBroadcastTxStaticMethodApiConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "broadcast_tx__static_method__Api",
        argNames: ["electrumUrl", "txBytes"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  Balance _wire2api_balance(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return Balance(
      lbtc: _wire2api_i64(arr[0]),
    );
  }

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }

  List<Tx> _wire2api_list_tx(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_tx).toList();
  }

  List<TxOut> _wire2api_list_tx_out(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_tx_out).toList();
  }

  LwkError _wire2api_lwk_error(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return LwkError(
      msg: _wire2api_String(arr[0]),
    );
  }

  PsetAmounts _wire2api_pset_amounts(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return PsetAmounts(
      fee: _wire2api_u64(arr[0]),
      balances: _wire2api_balance(arr[1]),
    );
  }

  Tx _wire2api_tx(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5)
      throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return Tx(
      kind: _wire2api_String(arr[0]),
      amount: _wire2api_u64(arr[1]),
      txid: _wire2api_String(arr[2]),
      outputs: _wire2api_list_tx_out(arr[3]),
      fee: _wire2api_u64(arr[4]),
    );
  }

  TxOut _wire2api_tx_out(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return TxOut(
      address: _wire2api_String(arr[0]),
      amount: _wire2api_u64(arr[1]),
    );
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }

  WalletAddress _wire2api_wallet_address(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return WalletAddress(
      standard: _wire2api_String(arr[0]),
      confidential: _wire2api_String(arr[1]),
      index: _wire2api_u32(arr[2]),
    );
  }
}

// Section: api2wire

@protected
double api2wire_f32(double raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_network(Network raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class LwkBridgePlatform extends FlutterRustBridgeBase<LwkBridgeWire> {
  LwkBridgePlatform(ffi.DynamicLibrary dylib) : super(LwkBridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class LwkBridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  LwkBridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  LwkBridgeWire.fromLookup(
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

  void wire_new_wallet__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> mnemonic,
    int network,
    ffi.Pointer<wire_uint_8_list> db_path,
  ) {
    return _wire_new_wallet__static_method__Api(
      port_,
      mnemonic,
      network,
      db_path,
    );
  }

  late final _wire_new_wallet__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Int32, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_new_wallet__static_method__Api');
  late final _wire_new_wallet__static_method__Api =
      _wire_new_wallet__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>, int,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_sync__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
    ffi.Pointer<wire_uint_8_list> electrum_url,
  ) {
    return _wire_sync__static_method__Api(
      port_,
      wallet_id,
      electrum_url,
    );
  }

  late final _wire_sync__static_method__ApiPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_sync__static_method__Api');
  late final _wire_sync__static_method__Api =
      _wire_sync__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_descriptor__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
  ) {
    return _wire_descriptor__static_method__Api(
      port_,
      wallet_id,
    );
  }

  late final _wire_descriptor__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_descriptor__static_method__Api');
  late final _wire_descriptor__static_method__Api =
      _wire_descriptor__static_method__ApiPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_address_last_unused__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
  ) {
    return _wire_address_last_unused__static_method__Api(
      port_,
      wallet_id,
    );
  }

  late final _wire_address_last_unused__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_address_last_unused__static_method__Api');
  late final _wire_address_last_unused__static_method__Api =
      _wire_address_last_unused__static_method__ApiPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_address__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
    int index,
  ) {
    return _wire_address__static_method__Api(
      port_,
      wallet_id,
      index,
    );
  }

  late final _wire_address__static_method__ApiPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Uint32)>>('wire_address__static_method__Api');
  late final _wire_address__static_method__Api =
      _wire_address__static_method__ApiPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>, int)>();

  void wire_balance__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
  ) {
    return _wire_balance__static_method__Api(
      port_,
      wallet_id,
    );
  }

  late final _wire_balance__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_balance__static_method__Api');
  late final _wire_balance__static_method__Api =
      _wire_balance__static_method__ApiPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_txs__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
  ) {
    return _wire_txs__static_method__Api(
      port_,
      wallet_id,
    );
  }

  late final _wire_txs__static_method__ApiPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_txs__static_method__Api');
  late final _wire_txs__static_method__Api = _wire_txs__static_method__ApiPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_build_tx__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
    int sats,
    ffi.Pointer<wire_uint_8_list> out_address,
    double abs_fee,
  ) {
    return _wire_build_tx__static_method__Api(
      port_,
      wallet_id,
      sats,
      out_address,
      abs_fee,
    );
  }

  late final _wire_build_tx__static_method__ApiPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Uint64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Float)>>('wire_build_tx__static_method__Api');
  late final _wire_build_tx__static_method__Api =
      _wire_build_tx__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>, int,
              ffi.Pointer<wire_uint_8_list>, double)>();

  void wire_decode_tx__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
    ffi.Pointer<wire_uint_8_list> pset,
  ) {
    return _wire_decode_tx__static_method__Api(
      port_,
      wallet_id,
      pset,
    );
  }

  late final _wire_decode_tx__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_decode_tx__static_method__Api');
  late final _wire_decode_tx__static_method__Api =
      _wire_decode_tx__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_sign_tx__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> wallet_id,
    int network,
    ffi.Pointer<wire_uint_8_list> pset,
    ffi.Pointer<wire_uint_8_list> mnemonic,
  ) {
    return _wire_sign_tx__static_method__Api(
      port_,
      wallet_id,
      network,
      pset,
      mnemonic,
    );
  }

  late final _wire_sign_tx__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Int32,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_sign_tx__static_method__Api');
  late final _wire_sign_tx__static_method__Api =
      _wire_sign_tx__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>, int,
              ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_broadcast_tx__static_method__Api(
    int port_,
    ffi.Pointer<wire_uint_8_list> electrum_url,
    ffi.Pointer<wire_uint_8_list> tx_bytes,
  ) {
    return _wire_broadcast_tx__static_method__Api(
      port_,
      electrum_url,
      tx_bytes,
    );
  }

  late final _wire_broadcast_tx__static_method__ApiPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_broadcast_tx__static_method__Api');
  late final _wire_broadcast_tx__static_method__Api =
      _wire_broadcast_tx__static_method__ApiPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>(
      'new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

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

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
