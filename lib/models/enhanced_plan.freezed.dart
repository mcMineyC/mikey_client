// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enhanced_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnhancedPlan {

 int get id; int get planCenterId; String get title; DateTime get startTime; int get duration; String get planningCenterUrl; List<Person> get people;
/// Create a copy of EnhancedPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnhancedPlanCopyWith<EnhancedPlan> get copyWith => _$EnhancedPlanCopyWithImpl<EnhancedPlan>(this as EnhancedPlan, _$identity);

  /// Serializes this EnhancedPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EnhancedPlan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnhancedPlan&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.planCenterId, _this.planCenterId) || other.planCenterId == _this.planCenterId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.duration, _this.duration) || other.duration == _this.duration)&&(identical(other.planningCenterUrl, _this.planningCenterUrl) || other.planningCenterUrl == _this.planningCenterUrl)&&const DeepCollectionEquality().equals(other.people, _this.people));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EnhancedPlan;
  return Object.hash(runtimeType,_this.id,_this.planCenterId,_this.title,_this.startTime,_this.duration,_this.planningCenterUrl,const DeepCollectionEquality().hash(_this.people));
}

@override
String toString() {
  final _this = this as EnhancedPlan;
  return 'EnhancedPlan(id: ${_this.id}, planCenterId: ${_this.planCenterId}, title: ${_this.title}, startTime: ${_this.startTime}, duration: ${_this.duration}, planningCenterUrl: ${_this.planningCenterUrl}, people: ${_this.people})';
}


}

/// @nodoc
abstract mixin class $EnhancedPlanCopyWith<$Res>  {
  factory $EnhancedPlanCopyWith(EnhancedPlan value, $Res Function(EnhancedPlan) _then) = _$EnhancedPlanCopyWithImpl;
@useResult
$Res call({
 int id, int planCenterId, String title, DateTime startTime, int duration, String planningCenterUrl, List<Person> people
});




}
/// @nodoc
class _$EnhancedPlanCopyWithImpl<$Res>
    implements $EnhancedPlanCopyWith<$Res> {
  _$EnhancedPlanCopyWithImpl(this._self, this._then);

  final EnhancedPlan _self;
  final $Res Function(EnhancedPlan) _then;

/// Create a copy of EnhancedPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? planCenterId = null,Object? title = null,Object? startTime = null,Object? duration = null,Object? planningCenterUrl = null,Object? people = null,}) {
  return _then(EnhancedPlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,planCenterId: null == planCenterId ? _self.planCenterId : planCenterId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,planningCenterUrl: null == planningCenterUrl ? _self.planningCenterUrl : planningCenterUrl // ignore: cast_nullable_to_non_nullable
as String,people: null == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as List<Person>,
  ));
}

}


/// Adds pattern-matching-related methods to [EnhancedPlan].
extension EnhancedPlanPatterns on EnhancedPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnhancedPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnhancedPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnhancedPlan value)  $default,){
final _that = this;
switch (_that) {
case _EnhancedPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnhancedPlan value)?  $default,){
final _that = this;
switch (_that) {
case _EnhancedPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int planCenterId,  String title,  DateTime startTime,  int duration,  String planningCenterUrl,  List<Person> people)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnhancedPlan() when $default != null:
return $default(_that.id,_that.planCenterId,_that.title,_that.startTime,_that.duration,_that.planningCenterUrl,_that.people);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int planCenterId,  String title,  DateTime startTime,  int duration,  String planningCenterUrl,  List<Person> people)  $default,) {final _that = this;
switch (_that) {
case _EnhancedPlan():
return $default(_that.id,_that.planCenterId,_that.title,_that.startTime,_that.duration,_that.planningCenterUrl,_that.people);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int planCenterId,  String title,  DateTime startTime,  int duration,  String planningCenterUrl,  List<Person> people)?  $default,) {final _that = this;
switch (_that) {
case _EnhancedPlan() when $default != null:
return $default(_that.id,_that.planCenterId,_that.title,_that.startTime,_that.duration,_that.planningCenterUrl,_that.people);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnhancedPlan extends EnhancedPlan {
   _EnhancedPlan({required this.id, required this.planCenterId, required this.title, required this.startTime, required this.duration, required this.planningCenterUrl, required  List<Person> people}): _people = people,super._();
  factory _EnhancedPlan.fromJson(Map<String, dynamic> json) => _$EnhancedPlanFromJson(json);

@override final  int id;
@override final  int planCenterId;
@override final  String title;
@override final  DateTime startTime;
@override final  int duration;
@override final  String planningCenterUrl;
 final  List<Person> _people;
@override List<Person> get people {
  if (_people is EqualUnmodifiableListView) return _people;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_people);
}


/// Create a copy of EnhancedPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnhancedPlanCopyWith<_EnhancedPlan> get copyWith => __$EnhancedPlanCopyWithImpl<_EnhancedPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnhancedPlanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnhancedPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.planCenterId, planCenterId) || other.planCenterId == planCenterId)&&(identical(other.title, title) || other.title == title)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.planningCenterUrl, planningCenterUrl) || other.planningCenterUrl == planningCenterUrl)&&const DeepCollectionEquality().equals(other.people, _people));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,planCenterId,title,startTime,duration,planningCenterUrl,const DeepCollectionEquality().hash(_people));
}

@override
String toString() {
    return 'EnhancedPlan(id: $id, planCenterId: $planCenterId, title: $title, startTime: $startTime, duration: $duration, planningCenterUrl: $planningCenterUrl, people: $people)';
}


}

/// @nodoc
abstract mixin class _$EnhancedPlanCopyWith<$Res> implements $EnhancedPlanCopyWith<$Res> {
  factory _$EnhancedPlanCopyWith(_EnhancedPlan value, $Res Function(_EnhancedPlan) _then) = __$EnhancedPlanCopyWithImpl;
@override @useResult
$Res call({
 int id, int planCenterId, String title, DateTime startTime, int duration, String planningCenterUrl, List<Person> people
});




}
/// @nodoc
class __$EnhancedPlanCopyWithImpl<$Res>
    implements _$EnhancedPlanCopyWith<$Res> {
  __$EnhancedPlanCopyWithImpl(this._self, this._then);

  final _EnhancedPlan _self;
  final $Res Function(_EnhancedPlan) _then;

/// Create a copy of EnhancedPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? planCenterId = null,Object? title = null,Object? startTime = null,Object? duration = null,Object? planningCenterUrl = null,Object? people = null,}) {
  return _then(_EnhancedPlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,planCenterId: null == planCenterId ? _self.planCenterId : planCenterId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,planningCenterUrl: null == planningCenterUrl ? _self.planningCenterUrl : planningCenterUrl // ignore: cast_nullable_to_non_nullable
as String,people: null == people ? _self._people : people // ignore: cast_nullable_to_non_nullable
as List<Person>,
  ));
}


}

// dart format on
