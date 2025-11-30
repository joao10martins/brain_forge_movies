// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState()';
}


}

/// @nodoc
class $DashboardStateCopyWith<$Res>  {
$DashboardStateCopyWith(DashboardState _, $Res Function(DashboardState) __);
}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _PopularLoaded value)?  popularLoaded,TResult Function( _SearchLoading value)?  searchLoading,TResult Function( _SearchLoaded value)?  searchLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PopularLoaded() when popularLoaded != null:
return popularLoaded(_that);case _SearchLoading() when searchLoading != null:
return searchLoading(_that);case _SearchLoaded() when searchLoaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _PopularLoaded value)  popularLoaded,required TResult Function( _SearchLoading value)  searchLoading,required TResult Function( _SearchLoaded value)  searchLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _PopularLoaded():
return popularLoaded(_that);case _SearchLoading():
return searchLoading(_that);case _SearchLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _PopularLoaded value)?  popularLoaded,TResult? Function( _SearchLoading value)?  searchLoading,TResult? Function( _SearchLoaded value)?  searchLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PopularLoaded() when popularLoaded != null:
return popularLoaded(_that);case _SearchLoading() when searchLoading != null:
return searchLoading(_that);case _SearchLoaded() when searchLoaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Movie> popular)?  popularLoaded,TResult Function()?  searchLoading,TResult Function( List<Movie> results)?  searchLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PopularLoaded() when popularLoaded != null:
return popularLoaded(_that.popular);case _SearchLoading() when searchLoading != null:
return searchLoading();case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that.results);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Movie> popular)  popularLoaded,required TResult Function()  searchLoading,required TResult Function( List<Movie> results)  searchLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _PopularLoaded():
return popularLoaded(_that.popular);case _SearchLoading():
return searchLoading();case _SearchLoaded():
return searchLoaded(_that.results);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Movie> popular)?  popularLoaded,TResult? Function()?  searchLoading,TResult? Function( List<Movie> results)?  searchLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PopularLoaded() when popularLoaded != null:
return popularLoaded(_that.popular);case _SearchLoading() when searchLoading != null:
return searchLoading();case _SearchLoaded() when searchLoaded != null:
return searchLoaded(_that.results);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DashboardState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState.initial()';
}


}




/// @nodoc


class _Loading implements DashboardState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState.loading()';
}


}




/// @nodoc


class _PopularLoaded implements DashboardState {
  const _PopularLoaded(final  List<Movie> popular): _popular = popular;
  

 final  List<Movie> _popular;
 List<Movie> get popular {
  if (_popular is EqualUnmodifiableListView) return _popular;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popular);
}


/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularLoadedCopyWith<_PopularLoaded> get copyWith => __$PopularLoadedCopyWithImpl<_PopularLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularLoaded&&const DeepCollectionEquality().equals(other._popular, _popular));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popular));

@override
String toString() {
  return 'DashboardState.popularLoaded(popular: $popular)';
}


}

/// @nodoc
abstract mixin class _$PopularLoadedCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$PopularLoadedCopyWith(_PopularLoaded value, $Res Function(_PopularLoaded) _then) = __$PopularLoadedCopyWithImpl;
@useResult
$Res call({
 List<Movie> popular
});




}
/// @nodoc
class __$PopularLoadedCopyWithImpl<$Res>
    implements _$PopularLoadedCopyWith<$Res> {
  __$PopularLoadedCopyWithImpl(this._self, this._then);

  final _PopularLoaded _self;
  final $Res Function(_PopularLoaded) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? popular = null,}) {
  return _then(_PopularLoaded(
null == popular ? _self._popular : popular // ignore: cast_nullable_to_non_nullable
as List<Movie>,
  ));
}


}

/// @nodoc


class _SearchLoading implements DashboardState {
  const _SearchLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardState.searchLoading()';
}


}




/// @nodoc


class _SearchLoaded implements DashboardState {
  const _SearchLoaded(final  List<Movie> results): _results = results;
  

 final  List<Movie> _results;
 List<Movie> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchLoadedCopyWith<_SearchLoaded> get copyWith => __$SearchLoadedCopyWithImpl<_SearchLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchLoaded&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'DashboardState.searchLoaded(results: $results)';
}


}

/// @nodoc
abstract mixin class _$SearchLoadedCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$SearchLoadedCopyWith(_SearchLoaded value, $Res Function(_SearchLoaded) _then) = __$SearchLoadedCopyWithImpl;
@useResult
$Res call({
 List<Movie> results
});




}
/// @nodoc
class __$SearchLoadedCopyWithImpl<$Res>
    implements _$SearchLoadedCopyWith<$Res> {
  __$SearchLoadedCopyWithImpl(this._self, this._then);

  final _SearchLoaded _self;
  final $Res Function(_SearchLoaded) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_SearchLoaded(
null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Movie>,
  ));
}


}

/// @nodoc


class _Error implements DashboardState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of DashboardState
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
  return 'DashboardState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
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

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
