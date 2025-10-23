// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDetailModel {

 int get id; String get name; List<AbilityModel> get abilities; double get height; double get weight; SpriteModel get sprites; List<TypeSlotModel> get types; List<StatModel> get stats;@JsonKey(name: 'gender_rate') int? get genderRate;
/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailModelCopyWith<PokemonDetailModel> get copyWith => _$PokemonDetailModelCopyWithImpl<PokemonDetailModel>(this as PokemonDetailModel, _$identity);

  /// Serializes this PokemonDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.stats, stats)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(abilities),height,weight,sprites,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(stats),genderRate);

@override
String toString() {
  return 'PokemonDetailModel(id: $id, name: $name, abilities: $abilities, height: $height, weight: $weight, sprites: $sprites, types: $types, stats: $stats, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailModelCopyWith<$Res>  {
  factory $PokemonDetailModelCopyWith(PokemonDetailModel value, $Res Function(PokemonDetailModel) _then) = _$PokemonDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<AbilityModel> abilities, double height, double weight, SpriteModel sprites, List<TypeSlotModel> types, List<StatModel> stats,@JsonKey(name: 'gender_rate') int? genderRate
});


$SpriteModelCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonDetailModelCopyWithImpl<$Res>
    implements $PokemonDetailModelCopyWith<$Res> {
  _$PokemonDetailModelCopyWithImpl(this._self, this._then);

  final PokemonDetailModel _self;
  final $Res Function(PokemonDetailModel) _then;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? abilities = null,Object? height = null,Object? weight = null,Object? sprites = null,Object? types = null,Object? stats = null,Object? genderRate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityModel>,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpriteModel,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<TypeSlotModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatModel>,genderRate: freezed == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteModelCopyWith<$Res> get sprites {
  
  return $SpriteModelCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonDetailModel].
extension PokemonDetailModelPatterns on PokemonDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<AbilityModel> abilities,  double height,  double weight,  SpriteModel sprites,  List<TypeSlotModel> types,  List<StatModel> stats, @JsonKey(name: 'gender_rate')  int? genderRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.abilities,_that.height,_that.weight,_that.sprites,_that.types,_that.stats,_that.genderRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<AbilityModel> abilities,  double height,  double weight,  SpriteModel sprites,  List<TypeSlotModel> types,  List<StatModel> stats, @JsonKey(name: 'gender_rate')  int? genderRate)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailModel():
return $default(_that.id,_that.name,_that.abilities,_that.height,_that.weight,_that.sprites,_that.types,_that.stats,_that.genderRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<AbilityModel> abilities,  double height,  double weight,  SpriteModel sprites,  List<TypeSlotModel> types,  List<StatModel> stats, @JsonKey(name: 'gender_rate')  int? genderRate)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.abilities,_that.height,_that.weight,_that.sprites,_that.types,_that.stats,_that.genderRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonDetailModel implements PokemonDetailModel {
  const _PokemonDetailModel({required this.id, required this.name, required final  List<AbilityModel> abilities, required this.height, required this.weight, required this.sprites, required final  List<TypeSlotModel> types, required final  List<StatModel> stats, @JsonKey(name: 'gender_rate') this.genderRate}): _abilities = abilities,_types = types,_stats = stats;
  factory _PokemonDetailModel.fromJson(Map<String, dynamic> json) => _$PokemonDetailModelFromJson(json);

@override final  int id;
@override final  String name;
 final  List<AbilityModel> _abilities;
@override List<AbilityModel> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  double height;
@override final  double weight;
@override final  SpriteModel sprites;
 final  List<TypeSlotModel> _types;
@override List<TypeSlotModel> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<StatModel> _stats;
@override List<StatModel> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

@override@JsonKey(name: 'gender_rate') final  int? genderRate;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailModelCopyWith<_PokemonDetailModel> get copyWith => __$PokemonDetailModelCopyWithImpl<_PokemonDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._stats, _stats)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_abilities),height,weight,sprites,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_stats),genderRate);

@override
String toString() {
  return 'PokemonDetailModel(id: $id, name: $name, abilities: $abilities, height: $height, weight: $weight, sprites: $sprites, types: $types, stats: $stats, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailModelCopyWith<$Res> implements $PokemonDetailModelCopyWith<$Res> {
  factory _$PokemonDetailModelCopyWith(_PokemonDetailModel value, $Res Function(_PokemonDetailModel) _then) = __$PokemonDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<AbilityModel> abilities, double height, double weight, SpriteModel sprites, List<TypeSlotModel> types, List<StatModel> stats,@JsonKey(name: 'gender_rate') int? genderRate
});


@override $SpriteModelCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonDetailModelCopyWithImpl<$Res>
    implements _$PokemonDetailModelCopyWith<$Res> {
  __$PokemonDetailModelCopyWithImpl(this._self, this._then);

  final _PokemonDetailModel _self;
  final $Res Function(_PokemonDetailModel) _then;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? abilities = null,Object? height = null,Object? weight = null,Object? sprites = null,Object? types = null,Object? stats = null,Object? genderRate = freezed,}) {
  return _then(_PokemonDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityModel>,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpriteModel,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<TypeSlotModel>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatModel>,genderRate: freezed == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteModelCopyWith<$Res> get sprites {
  
  return $SpriteModelCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$StatModel {

@JsonKey(name: 'base_stat') int get baseStat; int get effort; StatDetailModel get stat;
/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatModelCopyWith<StatModel> get copyWith => _$StatModelCopyWithImpl<StatModel>(this as StatModel, _$identity);

  /// Serializes this StatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'StatModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $StatModelCopyWith<$Res>  {
  factory $StatModelCopyWith(StatModel value, $Res Function(StatModel) _then) = _$StatModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, int effort, StatDetailModel stat
});


$StatDetailModelCopyWith<$Res> get stat;

}
/// @nodoc
class _$StatModelCopyWithImpl<$Res>
    implements $StatModelCopyWith<$Res> {
  _$StatModelCopyWithImpl(this._self, this._then);

  final StatModel _self;
  final $Res Function(StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatDetailModel,
  ));
}
/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatDetailModelCopyWith<$Res> get stat {
  
  return $StatDetailModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatModel].
extension StatModelPatterns on StatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatModel value)  $default,){
final _that = this;
switch (_that) {
case _StatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatDetailModel stat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatDetailModel stat)  $default,) {final _that = this;
switch (_that) {
case _StatModel():
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatDetailModel stat)?  $default,) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatModel implements StatModel {
  const _StatModel({@JsonKey(name: 'base_stat') required this.baseStat, required this.effort, required this.stat});
  factory _StatModel.fromJson(Map<String, dynamic> json) => _$StatModelFromJson(json);

@override@JsonKey(name: 'base_stat') final  int baseStat;
@override final  int effort;
@override final  StatDetailModel stat;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatModelCopyWith<_StatModel> get copyWith => __$StatModelCopyWithImpl<_StatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'StatModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$StatModelCopyWith<$Res> implements $StatModelCopyWith<$Res> {
  factory _$StatModelCopyWith(_StatModel value, $Res Function(_StatModel) _then) = __$StatModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, int effort, StatDetailModel stat
});


@override $StatDetailModelCopyWith<$Res> get stat;

}
/// @nodoc
class __$StatModelCopyWithImpl<$Res>
    implements _$StatModelCopyWith<$Res> {
  __$StatModelCopyWithImpl(this._self, this._then);

  final _StatModel _self;
  final $Res Function(_StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_StatModel(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatDetailModel,
  ));
}

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatDetailModelCopyWith<$Res> get stat {
  
  return $StatDetailModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$StatDetailModel {

 String get name; String get url;
/// Create a copy of StatDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatDetailModelCopyWith<StatDetailModel> get copyWith => _$StatDetailModelCopyWithImpl<StatDetailModel>(this as StatDetailModel, _$identity);

  /// Serializes this StatDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatDetailModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatDetailModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $StatDetailModelCopyWith<$Res>  {
  factory $StatDetailModelCopyWith(StatDetailModel value, $Res Function(StatDetailModel) _then) = _$StatDetailModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$StatDetailModelCopyWithImpl<$Res>
    implements $StatDetailModelCopyWith<$Res> {
  _$StatDetailModelCopyWithImpl(this._self, this._then);

  final StatDetailModel _self;
  final $Res Function(StatDetailModel) _then;

/// Create a copy of StatDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatDetailModel].
extension StatDetailModelPatterns on StatDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _StatDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatDetailModel() when $default != null:
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
case _StatDetailModel() when $default != null:
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
case _StatDetailModel():
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
case _StatDetailModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatDetailModel implements StatDetailModel {
  const _StatDetailModel({required this.name, required this.url});
  factory _StatDetailModel.fromJson(Map<String, dynamic> json) => _$StatDetailModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of StatDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatDetailModelCopyWith<_StatDetailModel> get copyWith => __$StatDetailModelCopyWithImpl<_StatDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatDetailModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatDetailModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StatDetailModelCopyWith<$Res> implements $StatDetailModelCopyWith<$Res> {
  factory _$StatDetailModelCopyWith(_StatDetailModel value, $Res Function(_StatDetailModel) _then) = __$StatDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$StatDetailModelCopyWithImpl<$Res>
    implements _$StatDetailModelCopyWith<$Res> {
  __$StatDetailModelCopyWithImpl(this._self, this._then);

  final _StatDetailModel _self;
  final $Res Function(_StatDetailModel) _then;

/// Create a copy of StatDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_StatDetailModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AbilityModel {

 AbilityDetail get ability;@JsonKey(name: 'is_hidden') bool get isHidden; int get slot;
/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityModelCopyWith<AbilityModel> get copyWith => _$AbilityModelCopyWithImpl<AbilityModel>(this as AbilityModel, _$identity);

  /// Serializes this AbilityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityModel&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'AbilityModel(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class $AbilityModelCopyWith<$Res>  {
  factory $AbilityModelCopyWith(AbilityModel value, $Res Function(AbilityModel) _then) = _$AbilityModelCopyWithImpl;
@useResult
$Res call({
 AbilityDetail ability,@JsonKey(name: 'is_hidden') bool isHidden, int slot
});


$AbilityDetailCopyWith<$Res> get ability;

}
/// @nodoc
class _$AbilityModelCopyWithImpl<$Res>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._self, this._then);

  final AbilityModel _self;
  final $Res Function(AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ability = null,Object? isHidden = null,Object? slot = null,}) {
  return _then(_self.copyWith(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityDetail,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<$Res> get ability {
  
  return $AbilityDetailCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [AbilityModel].
extension AbilityModelPatterns on AbilityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityModel value)  $default,){
final _that = this;
switch (_that) {
case _AbilityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityModel value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AbilityDetail ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AbilityDetail ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)  $default,) {final _that = this;
switch (_that) {
case _AbilityModel():
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AbilityDetail ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)?  $default,) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityModel implements AbilityModel {
  const _AbilityModel({required this.ability, @JsonKey(name: 'is_hidden') required this.isHidden, required this.slot});
  factory _AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);

@override final  AbilityDetail ability;
@override@JsonKey(name: 'is_hidden') final  bool isHidden;
@override final  int slot;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityModelCopyWith<_AbilityModel> get copyWith => __$AbilityModelCopyWithImpl<_AbilityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityModel&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'AbilityModel(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class _$AbilityModelCopyWith<$Res> implements $AbilityModelCopyWith<$Res> {
  factory _$AbilityModelCopyWith(_AbilityModel value, $Res Function(_AbilityModel) _then) = __$AbilityModelCopyWithImpl;
@override @useResult
$Res call({
 AbilityDetail ability,@JsonKey(name: 'is_hidden') bool isHidden, int slot
});


@override $AbilityDetailCopyWith<$Res> get ability;

}
/// @nodoc
class __$AbilityModelCopyWithImpl<$Res>
    implements _$AbilityModelCopyWith<$Res> {
  __$AbilityModelCopyWithImpl(this._self, this._then);

  final _AbilityModel _self;
  final $Res Function(_AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ability = null,Object? isHidden = null,Object? slot = null,}) {
  return _then(_AbilityModel(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityDetail,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<$Res> get ability {
  
  return $AbilityDetailCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// @nodoc
mixin _$AbilityDetail {

 String get name; String get url;
/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<AbilityDetail> get copyWith => _$AbilityDetailCopyWithImpl<AbilityDetail>(this as AbilityDetail, _$identity);

  /// Serializes this AbilityDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'AbilityDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $AbilityDetailCopyWith<$Res>  {
  factory $AbilityDetailCopyWith(AbilityDetail value, $Res Function(AbilityDetail) _then) = _$AbilityDetailCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$AbilityDetailCopyWithImpl<$Res>
    implements $AbilityDetailCopyWith<$Res> {
  _$AbilityDetailCopyWithImpl(this._self, this._then);

  final AbilityDetail _self;
  final $Res Function(AbilityDetail) _then;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AbilityDetail].
extension AbilityDetailPatterns on AbilityDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityDetail value)  $default,){
final _that = this;
switch (_that) {
case _AbilityDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityDetail value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityDetail() when $default != null:
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
case _AbilityDetail() when $default != null:
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
case _AbilityDetail():
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
case _AbilityDetail() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityDetail implements AbilityDetail {
  const _AbilityDetail({required this.name, required this.url});
  factory _AbilityDetail.fromJson(Map<String, dynamic> json) => _$AbilityDetailFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityDetailCopyWith<_AbilityDetail> get copyWith => __$AbilityDetailCopyWithImpl<_AbilityDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'AbilityDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AbilityDetailCopyWith<$Res> implements $AbilityDetailCopyWith<$Res> {
  factory _$AbilityDetailCopyWith(_AbilityDetail value, $Res Function(_AbilityDetail) _then) = __$AbilityDetailCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$AbilityDetailCopyWithImpl<$Res>
    implements _$AbilityDetailCopyWith<$Res> {
  __$AbilityDetailCopyWithImpl(this._self, this._then);

  final _AbilityDetail _self;
  final $Res Function(_AbilityDetail) _then;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_AbilityDetail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SpriteModel {

@JsonKey(name: 'front_default') String get frontDefault;
/// Create a copy of SpriteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpriteModelCopyWith<SpriteModel> get copyWith => _$SpriteModelCopyWithImpl<SpriteModel>(this as SpriteModel, _$identity);

  /// Serializes this SpriteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpriteModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'SpriteModel(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class $SpriteModelCopyWith<$Res>  {
  factory $SpriteModelCopyWith(SpriteModel value, $Res Function(SpriteModel) _then) = _$SpriteModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String frontDefault
});




}
/// @nodoc
class _$SpriteModelCopyWithImpl<$Res>
    implements $SpriteModelCopyWith<$Res> {
  _$SpriteModelCopyWithImpl(this._self, this._then);

  final SpriteModel _self;
  final $Res Function(SpriteModel) _then;

/// Create a copy of SpriteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = null,}) {
  return _then(_self.copyWith(
frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpriteModel].
extension SpriteModelPatterns on SpriteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpriteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpriteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpriteModel value)  $default,){
final _that = this;
switch (_that) {
case _SpriteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpriteModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpriteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String frontDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpriteModel() when $default != null:
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String frontDefault)  $default,) {final _that = this;
switch (_that) {
case _SpriteModel():
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String frontDefault)?  $default,) {final _that = this;
switch (_that) {
case _SpriteModel() when $default != null:
return $default(_that.frontDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpriteModel implements SpriteModel {
  const _SpriteModel({@JsonKey(name: 'front_default') required this.frontDefault});
  factory _SpriteModel.fromJson(Map<String, dynamic> json) => _$SpriteModelFromJson(json);

@override@JsonKey(name: 'front_default') final  String frontDefault;

/// Create a copy of SpriteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpriteModelCopyWith<_SpriteModel> get copyWith => __$SpriteModelCopyWithImpl<_SpriteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpriteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpriteModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'SpriteModel(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class _$SpriteModelCopyWith<$Res> implements $SpriteModelCopyWith<$Res> {
  factory _$SpriteModelCopyWith(_SpriteModel value, $Res Function(_SpriteModel) _then) = __$SpriteModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String frontDefault
});




}
/// @nodoc
class __$SpriteModelCopyWithImpl<$Res>
    implements _$SpriteModelCopyWith<$Res> {
  __$SpriteModelCopyWithImpl(this._self, this._then);

  final _SpriteModel _self;
  final $Res Function(_SpriteModel) _then;

/// Create a copy of SpriteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = null,}) {
  return _then(_SpriteModel(
frontDefault: null == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TypeSlotModel {

 int get slot; TypeDetail get type;
/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeSlotModelCopyWith<TypeSlotModel> get copyWith => _$TypeSlotModelCopyWithImpl<TypeSlotModel>(this as TypeSlotModel, _$identity);

  /// Serializes this TypeSlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeSlotModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeSlotModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeSlotModelCopyWith<$Res>  {
  factory $TypeSlotModelCopyWith(TypeSlotModel value, $Res Function(TypeSlotModel) _then) = _$TypeSlotModelCopyWithImpl;
@useResult
$Res call({
 int slot, TypeDetail type
});


$TypeDetailCopyWith<$Res> get type;

}
/// @nodoc
class _$TypeSlotModelCopyWithImpl<$Res>
    implements $TypeSlotModelCopyWith<$Res> {
  _$TypeSlotModelCopyWithImpl(this._self, this._then);

  final TypeSlotModel _self;
  final $Res Function(TypeSlotModel) _then;

/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeDetail,
  ));
}
/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<$Res> get type {
  
  return $TypeDetailCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [TypeSlotModel].
extension TypeSlotModelPatterns on TypeSlotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeSlotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeSlotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeSlotModel value)  $default,){
final _that = this;
switch (_that) {
case _TypeSlotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeSlotModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypeSlotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  TypeDetail type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeSlotModel() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  TypeDetail type)  $default,) {final _that = this;
switch (_that) {
case _TypeSlotModel():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  TypeDetail type)?  $default,) {final _that = this;
switch (_that) {
case _TypeSlotModel() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeSlotModel implements TypeSlotModel {
  const _TypeSlotModel({required this.slot, required this.type});
  factory _TypeSlotModel.fromJson(Map<String, dynamic> json) => _$TypeSlotModelFromJson(json);

@override final  int slot;
@override final  TypeDetail type;

/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeSlotModelCopyWith<_TypeSlotModel> get copyWith => __$TypeSlotModelCopyWithImpl<_TypeSlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeSlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeSlotModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeSlotModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeSlotModelCopyWith<$Res> implements $TypeSlotModelCopyWith<$Res> {
  factory _$TypeSlotModelCopyWith(_TypeSlotModel value, $Res Function(_TypeSlotModel) _then) = __$TypeSlotModelCopyWithImpl;
@override @useResult
$Res call({
 int slot, TypeDetail type
});


@override $TypeDetailCopyWith<$Res> get type;

}
/// @nodoc
class __$TypeSlotModelCopyWithImpl<$Res>
    implements _$TypeSlotModelCopyWith<$Res> {
  __$TypeSlotModelCopyWithImpl(this._self, this._then);

  final _TypeSlotModel _self;
  final $Res Function(_TypeSlotModel) _then;

/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_TypeSlotModel(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeDetail,
  ));
}

/// Create a copy of TypeSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<$Res> get type {
  
  return $TypeDetailCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$TypeDetail {

 String get name; String get url;
/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<TypeDetail> get copyWith => _$TypeDetailCopyWithImpl<TypeDetail>(this as TypeDetail, _$identity);

  /// Serializes this TypeDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $TypeDetailCopyWith<$Res>  {
  factory $TypeDetailCopyWith(TypeDetail value, $Res Function(TypeDetail) _then) = _$TypeDetailCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$TypeDetailCopyWithImpl<$Res>
    implements $TypeDetailCopyWith<$Res> {
  _$TypeDetailCopyWithImpl(this._self, this._then);

  final TypeDetail _self;
  final $Res Function(TypeDetail) _then;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeDetail].
extension TypeDetailPatterns on TypeDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeDetail value)  $default,){
final _that = this;
switch (_that) {
case _TypeDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TypeDetail() when $default != null:
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
case _TypeDetail() when $default != null:
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
case _TypeDetail():
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
case _TypeDetail() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeDetail implements TypeDetail {
  const _TypeDetail({required this.name, required this.url});
  factory _TypeDetail.fromJson(Map<String, dynamic> json) => _$TypeDetailFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDetailCopyWith<_TypeDetail> get copyWith => __$TypeDetailCopyWithImpl<_TypeDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TypeDetailCopyWith<$Res> implements $TypeDetailCopyWith<$Res> {
  factory _$TypeDetailCopyWith(_TypeDetail value, $Res Function(_TypeDetail) _then) = __$TypeDetailCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$TypeDetailCopyWithImpl<$Res>
    implements _$TypeDetailCopyWith<$Res> {
  __$TypeDetailCopyWithImpl(this._self, this._then);

  final _TypeDetail _self;
  final $Res Function(_TypeDetail) _then;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_TypeDetail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
