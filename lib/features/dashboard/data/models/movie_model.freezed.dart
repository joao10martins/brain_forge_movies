// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

@JsonKey(name: 'id') int get movieId; String get title;@JsonKey(name: 'vote_average') double get rating;@JsonKey(name: 'overview') String get description;@JsonKey(name: 'release_date') String get releaseDate;@JsonKey(name: 'genre_ids') List<int> get genres;@JsonKey(name: 'backdrop_path') String get backdropImage;@JsonKey(name: 'poster_path') String get posterImage;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.description, description) || other.description == description)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.backdropImage, backdropImage) || other.backdropImage == backdropImage)&&(identical(other.posterImage, posterImage) || other.posterImage == posterImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,movieId,title,rating,description,releaseDate,const DeepCollectionEquality().hash(genres),backdropImage,posterImage);

@override
String toString() {
  return 'MovieModel(movieId: $movieId, title: $title, rating: $rating, description: $description, releaseDate: $releaseDate, genres: $genres, backdropImage: $backdropImage, posterImage: $posterImage)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int movieId, String title,@JsonKey(name: 'vote_average') double rating,@JsonKey(name: 'overview') String description,@JsonKey(name: 'release_date') String releaseDate,@JsonKey(name: 'genre_ids') List<int> genres,@JsonKey(name: 'backdrop_path') String backdropImage,@JsonKey(name: 'poster_path') String posterImage
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,Object? title = null,Object? rating = null,Object? description = null,Object? releaseDate = null,Object? genres = null,Object? backdropImage = null,Object? posterImage = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<int>,backdropImage: null == backdropImage ? _self.backdropImage : backdropImage // ignore: cast_nullable_to_non_nullable
as String,posterImage: null == posterImage ? _self.posterImage : posterImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieModel].
extension MovieModelPatterns on MovieModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int movieId,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'genre_ids')  List<int> genres, @JsonKey(name: 'backdrop_path')  String backdropImage, @JsonKey(name: 'poster_path')  String posterImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.movieId,_that.title,_that.rating,_that.description,_that.releaseDate,_that.genres,_that.backdropImage,_that.posterImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int movieId,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'genre_ids')  List<int> genres, @JsonKey(name: 'backdrop_path')  String backdropImage, @JsonKey(name: 'poster_path')  String posterImage)  $default,) {final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that.movieId,_that.title,_that.rating,_that.description,_that.releaseDate,_that.genres,_that.backdropImage,_that.posterImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int movieId,  String title, @JsonKey(name: 'vote_average')  double rating, @JsonKey(name: 'overview')  String description, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'genre_ids')  List<int> genres, @JsonKey(name: 'backdrop_path')  String backdropImage, @JsonKey(name: 'poster_path')  String posterImage)?  $default,) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.movieId,_that.title,_that.rating,_that.description,_that.releaseDate,_that.genres,_that.backdropImage,_that.posterImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel {
  const _MovieModel({@JsonKey(name: 'id') required this.movieId, required this.title, @JsonKey(name: 'vote_average') required this.rating, @JsonKey(name: 'overview') required this.description, @JsonKey(name: 'release_date') required this.releaseDate, @JsonKey(name: 'genre_ids') required final  List<int> genres, @JsonKey(name: 'backdrop_path') required this.backdropImage, @JsonKey(name: 'poster_path') required this.posterImage}): _genres = genres;
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override@JsonKey(name: 'id') final  int movieId;
@override final  String title;
@override@JsonKey(name: 'vote_average') final  double rating;
@override@JsonKey(name: 'overview') final  String description;
@override@JsonKey(name: 'release_date') final  String releaseDate;
 final  List<int> _genres;
@override@JsonKey(name: 'genre_ids') List<int> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override@JsonKey(name: 'backdrop_path') final  String backdropImage;
@override@JsonKey(name: 'poster_path') final  String posterImage;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.description, description) || other.description == description)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.backdropImage, backdropImage) || other.backdropImage == backdropImage)&&(identical(other.posterImage, posterImage) || other.posterImage == posterImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,movieId,title,rating,description,releaseDate,const DeepCollectionEquality().hash(_genres),backdropImage,posterImage);

@override
String toString() {
  return 'MovieModel(movieId: $movieId, title: $title, rating: $rating, description: $description, releaseDate: $releaseDate, genres: $genres, backdropImage: $backdropImage, posterImage: $posterImage)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int movieId, String title,@JsonKey(name: 'vote_average') double rating,@JsonKey(name: 'overview') String description,@JsonKey(name: 'release_date') String releaseDate,@JsonKey(name: 'genre_ids') List<int> genres,@JsonKey(name: 'backdrop_path') String backdropImage,@JsonKey(name: 'poster_path') String posterImage
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,Object? title = null,Object? rating = null,Object? description = null,Object? releaseDate = null,Object? genres = null,Object? backdropImage = null,Object? posterImage = null,}) {
  return _then(_MovieModel(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<int>,backdropImage: null == backdropImage ? _self.backdropImage : backdropImage // ignore: cast_nullable_to_non_nullable
as String,posterImage: null == posterImage ? _self.posterImage : posterImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
