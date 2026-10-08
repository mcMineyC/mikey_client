// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Album {

 String get id; String get artistId; String get displayName; String get artistDisplayName; int get songCount; String get imageUrl; int get added; List<String> get visibleTo; List<String> get inLibrary; String get addedBy;
/// Create a copy of Album
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlbumCopyWith<Album> get copyWith => _$AlbumCopyWithImpl<Album>(this as Album, _$identity);

  /// Serializes this Album to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Album;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Album&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.artistId, _this.artistId) || other.artistId == _this.artistId)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.artistDisplayName, _this.artistDisplayName) || other.artistDisplayName == _this.artistDisplayName)&&(identical(other.songCount, _this.songCount) || other.songCount == _this.songCount)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.added, _this.added) || other.added == _this.added)&&const DeepCollectionEquality().equals(other.visibleTo, _this.visibleTo)&&const DeepCollectionEquality().equals(other.inLibrary, _this.inLibrary)&&(identical(other.addedBy, _this.addedBy) || other.addedBy == _this.addedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Album;
  return Object.hash(runtimeType,_this.id,_this.artistId,_this.displayName,_this.artistDisplayName,_this.songCount,_this.imageUrl,_this.added,const DeepCollectionEquality().hash(_this.visibleTo),const DeepCollectionEquality().hash(_this.inLibrary),_this.addedBy);
}

@override
String toString() {
  final _this = this as Album;
  return 'Album(id: ${_this.id}, artistId: ${_this.artistId}, displayName: ${_this.displayName}, artistDisplayName: ${_this.artistDisplayName}, songCount: ${_this.songCount}, imageUrl: ${_this.imageUrl}, added: ${_this.added}, visibleTo: ${_this.visibleTo}, inLibrary: ${_this.inLibrary}, addedBy: ${_this.addedBy})';
}


}

/// @nodoc
abstract mixin class $AlbumCopyWith<$Res>  {
  factory $AlbumCopyWith(Album value, $Res Function(Album) _then) = _$AlbumCopyWithImpl;
@useResult
$Res call({
 String id, String artistId, String displayName, String artistDisplayName, int songCount, String imageUrl, int added, List<String> visibleTo, List<String> inLibrary, String addedBy
});




}
/// @nodoc
class _$AlbumCopyWithImpl<$Res>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._self, this._then);

  final Album _self;
  final $Res Function(Album) _then;

/// Create a copy of Album
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? artistId = null,Object? displayName = null,Object? artistDisplayName = null,Object? songCount = null,Object? imageUrl = null,Object? added = null,Object? visibleTo = null,Object? inLibrary = null,Object? addedBy = null,}) {
  return _then(Album(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,artistDisplayName: null == artistDisplayName ? _self.artistDisplayName : artistDisplayName // ignore: cast_nullable_to_non_nullable
as String,songCount: null == songCount ? _self.songCount : songCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int,visibleTo: null == visibleTo ? _self.visibleTo : visibleTo // ignore: cast_nullable_to_non_nullable
as List<String>,inLibrary: null == inLibrary ? _self.inLibrary : inLibrary // ignore: cast_nullable_to_non_nullable
as List<String>,addedBy: null == addedBy ? _self.addedBy : addedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Album].
extension AlbumPatterns on Album {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Album value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Album() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Album value)  $default,){
final _that = this;
switch (_that) {
case _Album():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Album value)?  $default,){
final _that = this;
switch (_that) {
case _Album() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String artistId,  String displayName,  String artistDisplayName,  int songCount,  String imageUrl,  int added,  List<String> visibleTo,  List<String> inLibrary,  String addedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Album() when $default != null:
return $default(_that.id,_that.artistId,_that.displayName,_that.artistDisplayName,_that.songCount,_that.imageUrl,_that.added,_that.visibleTo,_that.inLibrary,_that.addedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String artistId,  String displayName,  String artistDisplayName,  int songCount,  String imageUrl,  int added,  List<String> visibleTo,  List<String> inLibrary,  String addedBy)  $default,) {final _that = this;
switch (_that) {
case _Album():
return $default(_that.id,_that.artistId,_that.displayName,_that.artistDisplayName,_that.songCount,_that.imageUrl,_that.added,_that.visibleTo,_that.inLibrary,_that.addedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String artistId,  String displayName,  String artistDisplayName,  int songCount,  String imageUrl,  int added,  List<String> visibleTo,  List<String> inLibrary,  String addedBy)?  $default,) {final _that = this;
switch (_that) {
case _Album() when $default != null:
return $default(_that.id,_that.artistId,_that.displayName,_that.artistDisplayName,_that.songCount,_that.imageUrl,_that.added,_that.visibleTo,_that.inLibrary,_that.addedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Album extends Album {
   _Album({required this.id, required this.artistId, required this.displayName, required this.artistDisplayName, required this.songCount, required this.imageUrl, required this.added, required  List<String> visibleTo, required  List<String> inLibrary, required this.addedBy}): _visibleTo = visibleTo,_inLibrary = inLibrary,super._();
  factory _Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

@override final  String id;
@override final  String artistId;
@override final  String displayName;
@override final  String artistDisplayName;
@override final  int songCount;
@override final  String imageUrl;
@override final  int added;
 final  List<String> _visibleTo;
@override List<String> get visibleTo {
  if (_visibleTo is EqualUnmodifiableListView) return _visibleTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibleTo);
}

 final  List<String> _inLibrary;
@override List<String> get inLibrary {
  if (_inLibrary is EqualUnmodifiableListView) return _inLibrary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inLibrary);
}

@override final  String addedBy;

/// Create a copy of Album
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlbumCopyWith<_Album> get copyWith => __$AlbumCopyWithImpl<_Album>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlbumToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Album&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.artistDisplayName, artistDisplayName) || other.artistDisplayName == artistDisplayName)&&(identical(other.songCount, songCount) || other.songCount == songCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.added, added) || other.added == added)&&const DeepCollectionEquality().equals(other.visibleTo, _visibleTo)&&const DeepCollectionEquality().equals(other.inLibrary, _inLibrary)&&(identical(other.addedBy, addedBy) || other.addedBy == addedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,artistId,displayName,artistDisplayName,songCount,imageUrl,added,const DeepCollectionEquality().hash(_visibleTo),const DeepCollectionEquality().hash(_inLibrary),addedBy);
}

@override
String toString() {
    return 'Album(id: $id, artistId: $artistId, displayName: $displayName, artistDisplayName: $artistDisplayName, songCount: $songCount, imageUrl: $imageUrl, added: $added, visibleTo: $visibleTo, inLibrary: $inLibrary, addedBy: $addedBy)';
}


}

/// @nodoc
abstract mixin class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) _then) = __$AlbumCopyWithImpl;
@override @useResult
$Res call({
 String id, String artistId, String displayName, String artistDisplayName, int songCount, String imageUrl, int added, List<String> visibleTo, List<String> inLibrary, String addedBy
});




}
/// @nodoc
class __$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(this._self, this._then);

  final _Album _self;
  final $Res Function(_Album) _then;

/// Create a copy of Album
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? artistId = null,Object? displayName = null,Object? artistDisplayName = null,Object? songCount = null,Object? imageUrl = null,Object? added = null,Object? visibleTo = null,Object? inLibrary = null,Object? addedBy = null,}) {
  return _then(_Album(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,artistDisplayName: null == artistDisplayName ? _self.artistDisplayName : artistDisplayName // ignore: cast_nullable_to_non_nullable
as String,songCount: null == songCount ? _self.songCount : songCount // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int,visibleTo: null == visibleTo ? _self._visibleTo : visibleTo // ignore: cast_nullable_to_non_nullable
as List<String>,inLibrary: null == inLibrary ? _self._inLibrary : inLibrary // ignore: cast_nullable_to_non_nullable
as List<String>,addedBy: null == addedBy ? _self.addedBy : addedBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
