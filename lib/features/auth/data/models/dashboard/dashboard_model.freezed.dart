// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

 int get totalStorageUsed;// Tổng dung lượng lưu trữ
 int get totalFiles;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.totalStorageUsed, totalStorageUsed) || other.totalStorageUsed == totalStorageUsed)&&(identical(other.totalFiles, totalFiles) || other.totalFiles == totalFiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStorageUsed,totalFiles);

@override
String toString() {
  return 'DashboardModel(totalStorageUsed: $totalStorageUsed, totalFiles: $totalFiles)';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
 int totalStorageUsed, int totalFiles
});




}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStorageUsed = null,Object? totalFiles = null,}) {
  return _then(_self.copyWith(
totalStorageUsed: null == totalStorageUsed ? _self.totalStorageUsed : totalStorageUsed // ignore: cast_nullable_to_non_nullable
as int,totalFiles: null == totalFiles ? _self.totalFiles : totalFiles // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalStorageUsed,  int totalFiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.totalStorageUsed,_that.totalFiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalStorageUsed,  int totalFiles)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.totalStorageUsed,_that.totalFiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalStorageUsed,  int totalFiles)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.totalStorageUsed,_that.totalFiles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel implements DashboardModel {
  const _DashboardModel({required this.totalStorageUsed, required this.totalFiles});
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override final  int totalStorageUsed;
// Tổng dung lượng lưu trữ
@override final  int totalFiles;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.totalStorageUsed, totalStorageUsed) || other.totalStorageUsed == totalStorageUsed)&&(identical(other.totalFiles, totalFiles) || other.totalFiles == totalFiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalStorageUsed,totalFiles);

@override
String toString() {
  return 'DashboardModel(totalStorageUsed: $totalStorageUsed, totalFiles: $totalFiles)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
 int totalStorageUsed, int totalFiles
});




}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStorageUsed = null,Object? totalFiles = null,}) {
  return _then(_DashboardModel(
totalStorageUsed: null == totalStorageUsed ? _self.totalStorageUsed : totalStorageUsed // ignore: cast_nullable_to_non_nullable
as int,totalFiles: null == totalFiles ? _self.totalFiles : totalFiles // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
