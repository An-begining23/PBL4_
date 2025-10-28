// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _RegistrationSuccessfully value)?  registrationSuccessfully,TResult Function( _FailInfo value)?  failInfo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _RegistrationSuccessfully() when registrationSuccessfully != null:
return registrationSuccessfully(_that);case _FailInfo() when failInfo != null:
return failInfo(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _RegistrationSuccessfully value)  registrationSuccessfully,required TResult Function( _FailInfo value)  failInfo,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _RegistrationSuccessfully():
return registrationSuccessfully(_that);case _FailInfo():
return failInfo(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _RegistrationSuccessfully value)?  registrationSuccessfully,TResult? Function( _FailInfo value)?  failInfo,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _RegistrationSuccessfully() when registrationSuccessfully != null:
return registrationSuccessfully(_that);case _FailInfo() when failInfo != null:
return failInfo(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? errorEmail,  String? errorPassword)?  initial,TResult Function()?  loading,TResult Function( dynamic user)?  registrationSuccessfully,TResult Function( String errorMessage)?  failInfo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.errorEmail,_that.errorPassword);case _Loading() when loading != null:
return loading();case _RegistrationSuccessfully() when registrationSuccessfully != null:
return registrationSuccessfully(_that.user);case _FailInfo() when failInfo != null:
return failInfo(_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? errorEmail,  String? errorPassword)  initial,required TResult Function()  loading,required TResult Function( dynamic user)  registrationSuccessfully,required TResult Function( String errorMessage)  failInfo,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.errorEmail,_that.errorPassword);case _Loading():
return loading();case _RegistrationSuccessfully():
return registrationSuccessfully(_that.user);case _FailInfo():
return failInfo(_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? errorEmail,  String? errorPassword)?  initial,TResult? Function()?  loading,TResult? Function( dynamic user)?  registrationSuccessfully,TResult? Function( String errorMessage)?  failInfo,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.errorEmail,_that.errorPassword);case _Loading() when loading != null:
return loading();case _RegistrationSuccessfully() when registrationSuccessfully != null:
return registrationSuccessfully(_that.user);case _FailInfo() when failInfo != null:
return failInfo(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RegisterState {
  const _Initial({this.errorEmail, this.errorPassword});
  

 final  String? errorEmail;
 final  String? errorPassword;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.errorEmail, errorEmail) || other.errorEmail == errorEmail)&&(identical(other.errorPassword, errorPassword) || other.errorPassword == errorPassword));
}


@override
int get hashCode => Object.hash(runtimeType,errorEmail,errorPassword);

@override
String toString() {
  return 'RegisterState.initial(errorEmail: $errorEmail, errorPassword: $errorPassword)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 String? errorEmail, String? errorPassword
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorEmail = freezed,Object? errorPassword = freezed,}) {
  return _then(_Initial(
errorEmail: freezed == errorEmail ? _self.errorEmail : errorEmail // ignore: cast_nullable_to_non_nullable
as String?,errorPassword: freezed == errorPassword ? _self.errorPassword : errorPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Loading implements RegisterState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class _RegistrationSuccessfully implements RegisterState {
  const _RegistrationSuccessfully(this.user);
  

 final  dynamic user;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationSuccessfullyCopyWith<_RegistrationSuccessfully> get copyWith => __$RegistrationSuccessfullyCopyWithImpl<_RegistrationSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationSuccessfully&&const DeepCollectionEquality().equals(other.user, user));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(user));

@override
String toString() {
  return 'RegisterState.registrationSuccessfully(user: $user)';
}


}

/// @nodoc
abstract mixin class _$RegistrationSuccessfullyCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegistrationSuccessfullyCopyWith(_RegistrationSuccessfully value, $Res Function(_RegistrationSuccessfully) _then) = __$RegistrationSuccessfullyCopyWithImpl;
@useResult
$Res call({
 dynamic user
});




}
/// @nodoc
class __$RegistrationSuccessfullyCopyWithImpl<$Res>
    implements _$RegistrationSuccessfullyCopyWith<$Res> {
  __$RegistrationSuccessfullyCopyWithImpl(this._self, this._then);

  final _RegistrationSuccessfully _self;
  final $Res Function(_RegistrationSuccessfully) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_RegistrationSuccessfully(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class _FailInfo implements RegisterState {
  const _FailInfo(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailInfoCopyWith<_FailInfo> get copyWith => __$FailInfoCopyWithImpl<_FailInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailInfo&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'RegisterState.failInfo(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FailInfoCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$FailInfoCopyWith(_FailInfo value, $Res Function(_FailInfo) _then) = __$FailInfoCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$FailInfoCopyWithImpl<$Res>
    implements _$FailInfoCopyWith<$Res> {
  __$FailInfoCopyWithImpl(this._self, this._then);

  final _FailInfo _self;
  final $Res Function(_FailInfo) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_FailInfo(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
