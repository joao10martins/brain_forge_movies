// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailsModel {

@JsonKey(name: 'backdrop_path') String get backdropPath;@JsonKey(name: 'poster_path') String get posterPath; int get budget; List<GenreModel> get genres;@JsonKey(name: 'production_companies') List<ProductionCompanyModel> get productionCompanies;@JsonKey(name: 'release_date') String get releaseDate; int get revenue; int get runtime; String get title;@JsonKey(name: 'vote_average') double get rating;@JsonKey(name: 'overview') String get description;
/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith => _$MovieDetailsModelCopyWithImpl<MovieDetailsModel>(this as MovieDetailsModel, _$identity);

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsModel&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.title, title) || other.title == title)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,posterPath,budget,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(productionCompanies),releaseDate,revenue,runtime,title,rating,description);

@override
String toString() {
  return 'MovieDetailsModel(backdropPath: $backdropPath, posterPath: $posterPath, budget: $budget, genres: $genres, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, title: $title, rating: $rating, description: $description)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsModelCopyWith<$Res>  {
  factory $MovieDetailsModelCopyWith(MovieDetailsModel value, $Res Function(MovieDetailsModel) _then) = _$MovieDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'poster_path') String posterPath, int budget, List<GenreModel> genres,@JsonKey(name: 'production_companies') List<ProductionCompanyModel> productionCompanies,@JsonKey(name: 'release_date') String releaseDate, int revenue, int runtime, String title,@JsonKey(name: 'vote_average') double rating,@JsonKey(name: 'overview') String description
});




}
/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final MovieDetailsModel _self;
  final $Res Function(MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backdropPath = null,Object? posterPath = null,Object? budget = null,Object? genres = null,Object? productionCompanies = null,Object? releaseDate = null,Object? revenue = null,Object? runtime = null,Object? title = null,Object? rating = null,Object? description = null,}) {
  return _then(_self.copyWith(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,productionCompanies: null == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompanyModel>,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailsModel].
extension MovieDetailsModelPatterns on MovieDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'poster_path')  String posterPath,  int budget,  List<GenreModel> genres, @JsonKey(name: 'production_companies')  List<ProductionCompanyModel> productionCompanies, @JsonKey(name: 'release_date')  String releaseDate,  int revenue,  int runtime,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
return $default(_that.backdropPath,_that.posterPath,_that.budget,_that.genres,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.rating,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'poster_path')  String posterPath,  int budget,  List<GenreModel> genres, @JsonKey(name: 'production_companies')  List<ProductionCompanyModel> productionCompanies, @JsonKey(name: 'release_date')  String releaseDate,  int revenue,  int runtime,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsModel():
return $default(_that.backdropPath,_that.posterPath,_that.budget,_that.genres,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.rating,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'backdrop_path')  String backdropPath, @JsonKey(name: 'poster_path')  String posterPath,  int budget,  List<GenreModel> genres, @JsonKey(name: 'production_companies')  List<ProductionCompanyModel> productionCompanies, @JsonKey(name: 'release_date')  String releaseDate,  int revenue,  int runtime,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsModel() when $default != null:
return $default(_that.backdropPath,_that.posterPath,_that.budget,_that.genres,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.rating,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetailsModel implements MovieDetailsModel {
  const _MovieDetailsModel({@JsonKey(name: 'backdrop_path') required this.backdropPath, @JsonKey(name: 'poster_path') required this.posterPath, required this.budget, required final  List<GenreModel> genres, @JsonKey(name: 'production_companies') required final  List<ProductionCompanyModel> productionCompanies, @JsonKey(name: 'release_date') required this.releaseDate, required this.revenue, required this.runtime, required this.title, @JsonKey(name: 'vote_average') required this.rating, @JsonKey(name: 'overview') required this.description}): _genres = genres,_productionCompanies = productionCompanies;
  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);

@override@JsonKey(name: 'backdrop_path') final  String backdropPath;
@override@JsonKey(name: 'poster_path') final  String posterPath;
@override final  int budget;
 final  List<GenreModel> _genres;
@override List<GenreModel> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

 final  List<ProductionCompanyModel> _productionCompanies;
@override@JsonKey(name: 'production_companies') List<ProductionCompanyModel> get productionCompanies {
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productionCompanies);
}

@override@JsonKey(name: 'release_date') final  String releaseDate;
@override final  int revenue;
@override final  int runtime;
@override final  String title;
@override@JsonKey(name: 'vote_average') final  double rating;
@override@JsonKey(name: 'overview') final  String description;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsModelCopyWith<_MovieDetailsModel> get copyWith => __$MovieDetailsModelCopyWithImpl<_MovieDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsModel&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.title, title) || other.title == title)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,posterPath,budget,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_productionCompanies),releaseDate,revenue,runtime,title,rating,description);

@override
String toString() {
  return 'MovieDetailsModel(backdropPath: $backdropPath, posterPath: $posterPath, budget: $budget, genres: $genres, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, title: $title, rating: $rating, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsModelCopyWith<$Res> implements $MovieDetailsModelCopyWith<$Res> {
  factory _$MovieDetailsModelCopyWith(_MovieDetailsModel value, $Res Function(_MovieDetailsModel) _then) = __$MovieDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'backdrop_path') String backdropPath,@JsonKey(name: 'poster_path') String posterPath, int budget, List<GenreModel> genres,@JsonKey(name: 'production_companies') List<ProductionCompanyModel> productionCompanies,@JsonKey(name: 'release_date') String releaseDate, int revenue, int runtime, String title,@JsonKey(name: 'vote_average') double rating,@JsonKey(name: 'overview') String description
});




}
/// @nodoc
class __$MovieDetailsModelCopyWithImpl<$Res>
    implements _$MovieDetailsModelCopyWith<$Res> {
  __$MovieDetailsModelCopyWithImpl(this._self, this._then);

  final _MovieDetailsModel _self;
  final $Res Function(_MovieDetailsModel) _then;

/// Create a copy of MovieDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backdropPath = null,Object? posterPath = null,Object? budget = null,Object? genres = null,Object? productionCompanies = null,Object? releaseDate = null,Object? revenue = null,Object? runtime = null,Object? title = null,Object? rating = null,Object? description = null,}) {
  return _then(_MovieDetailsModel(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreModel>,productionCompanies: null == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompanyModel>,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
