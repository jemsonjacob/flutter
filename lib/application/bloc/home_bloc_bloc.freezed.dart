// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeBlocEvent()';
}


}

/// @nodoc
class $HomeBlocEventCopyWith<$Res>  {
$HomeBlocEventCopyWith(HomeBlocEvent _, $Res Function(HomeBlocEvent) __);
}


/// @nodoc


class GetHomeScreenData implements HomeBlocEvent {
  const GetHomeScreenData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomeScreenData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeBlocEvent.getHomeScreenData()';
}


}




/// @nodoc
mixin _$HomeBlocState {

 String get stateId; List<HotAndNewData> get pastMoviesList; List<HotAndNewData> get trendingMoviesList; List<HotAndNewData> get topTvList; List<HotAndNewData> get horrorMoviesList; List<HotAndNewData> get dramaMoviesList; bool get isLoading; bool get isError;
/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBlocStateCopyWith<HomeBlocState> get copyWith => _$HomeBlocStateCopyWithImpl<HomeBlocState>(this as HomeBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBlocState&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other.pastMoviesList, pastMoviesList)&&const DeepCollectionEquality().equals(other.trendingMoviesList, trendingMoviesList)&&const DeepCollectionEquality().equals(other.topTvList, topTvList)&&const DeepCollectionEquality().equals(other.horrorMoviesList, horrorMoviesList)&&const DeepCollectionEquality().equals(other.dramaMoviesList, dramaMoviesList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(pastMoviesList),const DeepCollectionEquality().hash(trendingMoviesList),const DeepCollectionEquality().hash(topTvList),const DeepCollectionEquality().hash(horrorMoviesList),const DeepCollectionEquality().hash(dramaMoviesList),isLoading,isError);

@override
String toString() {
  return 'HomeBlocState(stateId: $stateId, pastMoviesList: $pastMoviesList, trendingMoviesList: $trendingMoviesList, topTvList: $topTvList, horrorMoviesList: $horrorMoviesList, dramaMoviesList: $dramaMoviesList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HomeBlocStateCopyWith<$Res>  {
  factory $HomeBlocStateCopyWith(HomeBlocState value, $Res Function(HomeBlocState) _then) = _$HomeBlocStateCopyWithImpl;
@useResult
$Res call({
 String stateId, List<HotAndNewData> pastMoviesList, List<HotAndNewData> trendingMoviesList, List<HotAndNewData> topTvList, List<HotAndNewData> horrorMoviesList, List<HotAndNewData> dramaMoviesList, bool isLoading, bool isError
});




}
/// @nodoc
class _$HomeBlocStateCopyWithImpl<$Res>
    implements $HomeBlocStateCopyWith<$Res> {
  _$HomeBlocStateCopyWithImpl(this._self, this._then);

  final HomeBlocState _self;
  final $Res Function(HomeBlocState) _then;

/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stateId = null,Object? pastMoviesList = null,Object? trendingMoviesList = null,Object? topTvList = null,Object? horrorMoviesList = null,Object? dramaMoviesList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastMoviesList: null == pastMoviesList ? _self.pastMoviesList : pastMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingMoviesList: null == trendingMoviesList ? _self.trendingMoviesList : trendingMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,topTvList: null == topTvList ? _self.topTvList : topTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,horrorMoviesList: null == horrorMoviesList ? _self.horrorMoviesList : horrorMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,dramaMoviesList: null == dramaMoviesList ? _self.dramaMoviesList : dramaMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements HomeBlocState {
  const _Initial({required this.stateId, required final  List<HotAndNewData> pastMoviesList, required final  List<HotAndNewData> trendingMoviesList, required final  List<HotAndNewData> topTvList, required final  List<HotAndNewData> horrorMoviesList, required final  List<HotAndNewData> dramaMoviesList, required this.isLoading, required this.isError}): _pastMoviesList = pastMoviesList,_trendingMoviesList = trendingMoviesList,_topTvList = topTvList,_horrorMoviesList = horrorMoviesList,_dramaMoviesList = dramaMoviesList;
  

@override final  String stateId;
 final  List<HotAndNewData> _pastMoviesList;
@override List<HotAndNewData> get pastMoviesList {
  if (_pastMoviesList is EqualUnmodifiableListView) return _pastMoviesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastMoviesList);
}

 final  List<HotAndNewData> _trendingMoviesList;
@override List<HotAndNewData> get trendingMoviesList {
  if (_trendingMoviesList is EqualUnmodifiableListView) return _trendingMoviesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingMoviesList);
}

 final  List<HotAndNewData> _topTvList;
@override List<HotAndNewData> get topTvList {
  if (_topTvList is EqualUnmodifiableListView) return _topTvList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topTvList);
}

 final  List<HotAndNewData> _horrorMoviesList;
@override List<HotAndNewData> get horrorMoviesList {
  if (_horrorMoviesList is EqualUnmodifiableListView) return _horrorMoviesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_horrorMoviesList);
}

 final  List<HotAndNewData> _dramaMoviesList;
@override List<HotAndNewData> get dramaMoviesList {
  if (_dramaMoviesList is EqualUnmodifiableListView) return _dramaMoviesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dramaMoviesList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other._pastMoviesList, _pastMoviesList)&&const DeepCollectionEquality().equals(other._trendingMoviesList, _trendingMoviesList)&&const DeepCollectionEquality().equals(other._topTvList, _topTvList)&&const DeepCollectionEquality().equals(other._horrorMoviesList, _horrorMoviesList)&&const DeepCollectionEquality().equals(other._dramaMoviesList, _dramaMoviesList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(_pastMoviesList),const DeepCollectionEquality().hash(_trendingMoviesList),const DeepCollectionEquality().hash(_topTvList),const DeepCollectionEquality().hash(_horrorMoviesList),const DeepCollectionEquality().hash(_dramaMoviesList),isLoading,isError);

@override
String toString() {
  return 'HomeBlocState(stateId: $stateId, pastMoviesList: $pastMoviesList, trendingMoviesList: $trendingMoviesList, topTvList: $topTvList, horrorMoviesList: $horrorMoviesList, dramaMoviesList: $dramaMoviesList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeBlocStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 String stateId, List<HotAndNewData> pastMoviesList, List<HotAndNewData> trendingMoviesList, List<HotAndNewData> topTvList, List<HotAndNewData> horrorMoviesList, List<HotAndNewData> dramaMoviesList, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stateId = null,Object? pastMoviesList = null,Object? trendingMoviesList = null,Object? topTvList = null,Object? horrorMoviesList = null,Object? dramaMoviesList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastMoviesList: null == pastMoviesList ? _self._pastMoviesList : pastMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,trendingMoviesList: null == trendingMoviesList ? _self._trendingMoviesList : trendingMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,topTvList: null == topTvList ? _self._topTvList : topTvList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,horrorMoviesList: null == horrorMoviesList ? _self._horrorMoviesList : horrorMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,dramaMoviesList: null == dramaMoviesList ? _self._dramaMoviesList : dramaMoviesList // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
