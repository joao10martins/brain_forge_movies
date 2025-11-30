// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductionCompanyModel {

 int get id; String? get logoPath; String get name;@JsonKey(name: 'origin_country') String get originCountry;
/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCompanyModelCopyWith<ProductionCompanyModel> get copyWith => _$ProductionCompanyModelCopyWithImpl<ProductionCompanyModel>(this as ProductionCompanyModel, _$identity);

  /// Serializes this ProductionCompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductionCompanyModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductionCompanyModelCopyWith<$Res>  {
  factory $ProductionCompanyModelCopyWith(ProductionCompanyModel value, $Res Function(ProductionCompanyModel) _then) = _$ProductionCompanyModelCopyWithImpl;
@useResult
$Res call({
 int id, String? logoPath, String name,@JsonKey(name: 'origin_country') String originCountry
});




}
/// @nodoc
class _$ProductionCompanyModelCopyWithImpl<$Res>
    implements $ProductionCompanyModelCopyWith<$Res> {
  _$ProductionCompanyModelCopyWithImpl(this._self, this._then);

  final ProductionCompanyModel _self;
  final $Res Function(ProductionCompanyModel) _then;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductionCompanyModel].
extension ProductionCompanyModelPatterns on ProductionCompanyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductionCompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductionCompanyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductionCompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductionCompanyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductionCompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductionCompanyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductionCompanyModel() when $default != null:
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)  $default,) {final _that = this;
switch (_that) {
case _ProductionCompanyModel():
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)?  $default,) {final _that = this;
switch (_that) {
case _ProductionCompanyModel() when $default != null:
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductionCompanyModel implements ProductionCompanyModel {
  const _ProductionCompanyModel({required this.id, this.logoPath, required this.name, @JsonKey(name: 'origin_country') required this.originCountry});
  factory _ProductionCompanyModel.fromJson(Map<String, dynamic> json) => _$ProductionCompanyModelFromJson(json);

@override final  int id;
@override final  String? logoPath;
@override final  String name;
@override@JsonKey(name: 'origin_country') final  String originCountry;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCompanyModelCopyWith<_ProductionCompanyModel> get copyWith => __$ProductionCompanyModelCopyWithImpl<_ProductionCompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductionCompanyModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductionCompanyModelCopyWith<$Res> implements $ProductionCompanyModelCopyWith<$Res> {
  factory _$ProductionCompanyModelCopyWith(_ProductionCompanyModel value, $Res Function(_ProductionCompanyModel) _then) = __$ProductionCompanyModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? logoPath, String name,@JsonKey(name: 'origin_country') String originCountry
});




}
/// @nodoc
class __$ProductionCompanyModelCopyWithImpl<$Res>
    implements _$ProductionCompanyModelCopyWith<$Res> {
  __$ProductionCompanyModelCopyWithImpl(this._self, this._then);

  final _ProductionCompanyModel _self;
  final $Res Function(_ProductionCompanyModel) _then;

/// Create a copy of ProductionCompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = null,}) {
  return _then(_ProductionCompanyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
