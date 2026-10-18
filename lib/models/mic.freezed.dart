// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Mic {

 int get id; String get name; DateTime get updatedAt; int get batteryLevel; double get frequency;
/// Create a copy of Mic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MicCopyWith<Mic> get copyWith => _$MicCopyWithImpl<Mic>(this as Mic, _$identity);

  /// Serializes this Mic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Mic;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mic&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.batteryLevel, _this.batteryLevel) || other.batteryLevel == _this.batteryLevel)&&(identical(other.frequency, _this.frequency) || other.frequency == _this.frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Mic;
  return Object.hash(runtimeType,_this.id,_this.name,_this.updatedAt,_this.batteryLevel,_this.frequency);
}

@override
String toString() {
  final _this = this as Mic;
  return 'Mic(id: ${_this.id}, name: ${_this.name}, updatedAt: ${_this.updatedAt}, batteryLevel: ${_this.batteryLevel}, frequency: ${_this.frequency})';
}


}

/// @nodoc
abstract mixin class $MicCopyWith<$Res>  {
  factory $MicCopyWith(Mic value, $Res Function(Mic) _then) = _$MicCopyWithImpl;
@useResult
$Res call({
 int id, String name, DateTime updatedAt, int batteryLevel, double frequency
});




}
/// @nodoc
class _$MicCopyWithImpl<$Res>
    implements $MicCopyWith<$Res> {
  _$MicCopyWithImpl(this._self, this._then);

  final Mic _self;
  final $Res Function(Mic) _then;

/// Create a copy of Mic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? updatedAt = null,Object? batteryLevel = null,Object? frequency = null,}) {
  return _then(Mic(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as int,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Mic].
extension MicPatterns on Mic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mic value)  $default,){
final _that = this;
switch (_that) {
case _Mic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mic value)?  $default,){
final _that = this;
switch (_that) {
case _Mic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  DateTime updatedAt,  int batteryLevel,  double frequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mic() when $default != null:
return $default(_that.id,_that.name,_that.updatedAt,_that.batteryLevel,_that.frequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  DateTime updatedAt,  int batteryLevel,  double frequency)  $default,) {final _that = this;
switch (_that) {
case _Mic():
return $default(_that.id,_that.name,_that.updatedAt,_that.batteryLevel,_that.frequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  DateTime updatedAt,  int batteryLevel,  double frequency)?  $default,) {final _that = this;
switch (_that) {
case _Mic() when $default != null:
return $default(_that.id,_that.name,_that.updatedAt,_that.batteryLevel,_that.frequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mic extends Mic {
   _Mic({required this.id, required this.name, required this.updatedAt, required this.batteryLevel, required this.frequency}): super._();
  factory _Mic.fromJson(Map<String, dynamic> json) => _$MicFromJson(json);

@override final  int id;
@override final  String name;
@override final  DateTime updatedAt;
@override final  int batteryLevel;
@override final  double frequency;

/// Create a copy of Mic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MicCopyWith<_Mic> get copyWith => __$MicCopyWithImpl<_Mic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MicToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mic&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,updatedAt,batteryLevel,frequency);
}

@override
String toString() {
    return 'Mic(id: $id, name: $name, updatedAt: $updatedAt, batteryLevel: $batteryLevel, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class _$MicCopyWith<$Res> implements $MicCopyWith<$Res> {
  factory _$MicCopyWith(_Mic value, $Res Function(_Mic) _then) = __$MicCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, DateTime updatedAt, int batteryLevel, double frequency
});




}
/// @nodoc
class __$MicCopyWithImpl<$Res>
    implements _$MicCopyWith<$Res> {
  __$MicCopyWithImpl(this._self, this._then);

  final _Mic _self;
  final $Res Function(_Mic) _then;

/// Create a copy of Mic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? updatedAt = null,Object? batteryLevel = null,Object? frequency = null,}) {
  return _then(_Mic(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,batteryLevel: null == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as int,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
