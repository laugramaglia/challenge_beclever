// Mocks generated by Mockito 5.4.4 from annotations
// in challange_beclever/test/features/auth/data/repository/auth_repository_imp_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:challange_beclever/core/network/dio_client_fake.dart' as _i5;
import 'package:challange_beclever/features/auth/data/models/validate_phone_req_params.dart'
    as _i6;
import 'package:challange_beclever/features/auth/data/source/auth_api_service.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/src/shared_preferences_legacy.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthApiService extends _i1.Mock implements _i3.AuthApiService {
  MockAuthApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<String, _i5.Response>> validatePhone(
          _i6.ValidatePhoneReqParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #validatePhone,
          [params],
        ),
        returnValue: _i4.Future<_i2.Either<String, _i5.Response>>.value(
            _FakeEither_0<String, _i5.Response>(
          this,
          Invocation.method(
            #validatePhone,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, _i5.Response>>);

  @override
  _i4.Future<_i2.Either<String, _i5.Response>> createPassword(
          String? password) =>
      (super.noSuchMethod(
        Invocation.method(
          #createPassword,
          [password],
        ),
        returnValue: _i4.Future<_i2.Either<String, _i5.Response>>.value(
            _FakeEither_0<String, _i5.Response>(
          this,
          Invocation.method(
            #createPassword,
            [password],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, _i5.Response>>);

  @override
  _i4.Future<_i2.Either<String, _i5.Response>> login(
          {required Map<String, dynamic>? params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
          {#params: params},
        ),
        returnValue: _i4.Future<_i2.Either<String, _i5.Response>>.value(
            _FakeEither_0<String, _i5.Response>(
          this,
          Invocation.method(
            #login,
            [],
            {#params: params},
          ),
        )),
      ) as _i4.Future<_i2.Either<String, _i5.Response>>);

  @override
  _i4.Future<_i2.Either<String, _i5.Response>> getUser() => (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<String, _i5.Response>>.value(
            _FakeEither_0<String, _i5.Response>(
          this,
          Invocation.method(
            #getUser,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, _i5.Response>>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i7.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);

  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);

  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);

  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);

  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);

  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);

  @override
  _i4.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
