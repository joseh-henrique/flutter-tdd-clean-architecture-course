// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GeneralFailureTearOff {
  const _$GeneralFailureTearOff();

  ServerFailure serverFailure() {
    return const ServerFailure();
  }

  CacheFailure cacheFailure() {
    return const CacheFailure();
  }
}

// ignore: unused_element
const $GeneralFailure = _$GeneralFailureTearOff();

mixin _$GeneralFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  });
}

abstract class $GeneralFailureCopyWith<$Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure value, $Res Function(GeneralFailure) then) =
      _$GeneralFailureCopyWithImpl<$Res>;
}

class _$GeneralFailureCopyWithImpl<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  _$GeneralFailureCopyWithImpl(this._value, this._then);

  final GeneralFailure _value;
  // ignore: unused_field
  final $Res Function(GeneralFailure) _then;
}

abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

class _$ServerFailureCopyWithImpl<$Res>
    extends _$GeneralFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'GeneralFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements GeneralFailure {
  const factory ServerFailure() = _$ServerFailure;
}

abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
}

class _$CacheFailureCopyWithImpl<$Res>
    extends _$GeneralFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;
}

class _$CacheFailure implements CacheFailure {
  const _$CacheFailure();

  @override
  String toString() {
    return 'GeneralFailure.cacheFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements GeneralFailure {
  const factory CacheFailure() = _$CacheFailure;
}
