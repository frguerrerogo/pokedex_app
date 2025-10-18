// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonListItemModel {

 String get name; String get url;
/// Create a copy of PokemonListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListItemModelCopyWith<PokemonListItemModel> get copyWith => _$PokemonListItemModelCopyWithImpl<PokemonListItemModel>(this as PokemonListItemModel, _$identity);

  /// Serializes this PokemonListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonListItemModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonListItemModelCopyWith<$Res>  {
  factory $PokemonListItemModelCopyWith(PokemonListItemModel value, $Res Function(PokemonListItemModel) _then) = _$PokemonListItemModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonListItemModelCopyWithImpl<$Res>
    implements $PokemonListItemModelCopyWith<$Res> {
  _$PokemonListItemModelCopyWithImpl(this._self, this._then);

  final PokemonListItemModel _self;
  final $Res Function(PokemonListItemModel) _then;

/// Create a copy of PokemonListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListItemModel].
extension PokemonListItemModelPatterns on PokemonListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListItemModel() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _PokemonListItemModel():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListItemModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonListItemModel implements PokemonListItemModel {
  const _PokemonListItemModel({required this.name, required this.url});
  factory _PokemonListItemModel.fromJson(Map<String, dynamic> json) => _$PokemonListItemModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListItemModelCopyWith<_PokemonListItemModel> get copyWith => __$PokemonListItemModelCopyWithImpl<_PokemonListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListItemModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonListItemModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonListItemModelCopyWith<$Res> implements $PokemonListItemModelCopyWith<$Res> {
  factory _$PokemonListItemModelCopyWith(_PokemonListItemModel value, $Res Function(_PokemonListItemModel) _then) = __$PokemonListItemModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonListItemModelCopyWithImpl<$Res>
    implements _$PokemonListItemModelCopyWith<$Res> {
  __$PokemonListItemModelCopyWithImpl(this._self, this._then);

  final _PokemonListItemModel _self;
  final $Res Function(_PokemonListItemModel) _then;

/// Create a copy of PokemonListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonListItemModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
