// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStoreBase, Store {
  final _$statusAtom = Atom(name: '_SplashStoreBase.status');

  @override
  String get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$checkConnectionAsyncAction =
      AsyncAction('_SplashStoreBase.checkConnection');

  @override
  Future<void> checkConnection() {
    return _$checkConnectionAsyncAction.run(() => super.checkConnection());
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
