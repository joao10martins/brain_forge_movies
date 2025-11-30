// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _IsLoading value)?  isLoading,TResult Function( _IsLoadingMore value)?  isLoadingMore,TResult Function( _SearchLoaded value)?  searchLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _IsLoading() when isLoading != null:
return isLoading(_that);case _IsLoadingMore() when isLoadingMore != null:
return isLoadingMore(_that);case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _IsLoading value)  isLoading,required TResult Function( _IsLoadingMore value)  isLoadingMore,required TResult Function( _SearchLoaded value)  searchLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _IsLoading():
return isLoading(_that);case _IsLoadingMore():
return isLoadingMore(_that);case _SearchLoaded():
return searchLoaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _IsLoading value)?  isLoading,TResult? Function( _IsLoadingMore value)?  isLoadingMore,TResult? Function( _SearchLoaded value)?  searchLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _IsLoading() when isLoading != null:
return isLoading(_that);case _IsLoadingMore() when isLoadingMore != null:
return isLoadingMore(_that);case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  isLoading,TResult Function()?  isLoadingMore,TResult Function( List<Movie> movies,  int page,  int totalPages,  bool isLoadingMore)?  searchLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _IsLoading() when isLoading != null:
return isLoading();case _IsLoadingMore() when isLoadingMore != null:
return isLoadingMore();case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that.movies,_that.page,_that.totalPages,_that.isLoadingMore);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  isLoading,required TResult Function()  isLoadingMore,required TResult Function( List<Movie> movies,  int page,  int totalPages,  bool isLoadingMore)  searchLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _IsLoading():
return isLoading();case _IsLoadingMore():
return isLoadingMore();case _SearchLoaded():
return searchLoaded(_that.movies,_that.page,_that.totalPages,_that.isLoadingMore);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  isLoading,TResult? Function()?  isLoadingMore,TResult? Function( List<Movie> movies,  int page,  int totalPages,  bool isLoadingMore)?  searchLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _IsLoading() when isLoading != null:
return isLoading();case _IsLoadingMore() when isLoadingMore != null:
return isLoadingMore();case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that.movies,_that.page,_that.totalPages,_that.isLoadingMore);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SearchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initial()';
}


}




/// @nodoc


class _IsLoading implements SearchState {
  const _IsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.isLoading()';
}


}




/// @nodoc


class _IsLoadingMore implements SearchState {
  const _IsLoadingMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsLoadingMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.isLoadingMore()';
}


}




/// @nodoc


class _SearchLoaded implements SearchState {
  const _SearchLoaded({required final  List<Movie> movies, required this.page, required this.totalPages, this.isLoadingMore = false}): _movies = movies;
  

 final  List<Movie> _movies;
 List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

 final  int page;
 final  int totalPages;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchLoadedCopyWith<_SearchLoaded> get copyWith => __$SearchLoadedCopyWithImpl<_SearchLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchLoaded&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),page,totalPages,isLoadingMore);

@override
String toString() {
  return 'SearchState.searchLoaded(movies: $movies, page: $page, totalPages: $totalPages, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$SearchLoadedCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchLoadedCopyWith(_SearchLoaded value, $Res Function(_SearchLoaded) _then) = __$SearchLoadedCopyWithImpl;
@useResult
$Res call({
 List<Movie> movies, int page, int totalPages, bool isLoadingMore
});




}
/// @nodoc
class __$SearchLoadedCopyWithImpl<$Res>
    implements _$SearchLoadedCopyWith<$Res> {
  __$SearchLoadedCopyWithImpl(this._self, this._then);

  final _SearchLoaded _self;
  final $Res Function(_SearchLoaded) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? page = null,Object? totalPages = null,Object? isLoadingMore = null,}) {
  return _then(_SearchLoaded(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements SearchState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SearchState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
