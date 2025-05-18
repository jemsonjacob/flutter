// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HotNewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotNewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotNewEvent()';
}


}

/// @nodoc
class $HotNewEventCopyWith<$Res>  {
$HotNewEventCopyWith(HotNewEvent _, $Res Function(HotNewEvent) __);
}


/// @nodoc


class loadDataInComingSoon implements HotNewEvent {
  const loadDataInComingSoon();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is loadDataInComingSoon);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotNewEvent.loadDataInComingSoon()';
}


}




/// @nodoc


class loadDataInEveryoneWatching implements HotNewEvent {
  const loadDataInEveryoneWatching();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is loadDataInEveryoneWatching);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HotNewEvent.loadDataInEveryoneWatching()';
}


}




/// @nodoc
mixin _$HotNewState {

 List<HotAndNewData> get commingSoonlist; List<HotAndNewData> get everyoneWatchinglist; bool get isLoading; bool get isError;
/// Create a copy of HotNewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotNewStateCopyWith<HotNewState> get copyWith => _$HotNewStateCopyWithImpl<HotNewState>(this as HotNewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotNewState&&const DeepCollectionEquality().equals(other.commingSoonlist, commingSoonlist)&&const DeepCollectionEquality().equals(other.everyoneWatchinglist, everyoneWatchinglist)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(commingSoonlist),const DeepCollectionEquality().hash(everyoneWatchinglist),isLoading,isError);

@override
String toString() {
  return 'HotNewState(commingSoonlist: $commingSoonlist, everyoneWatchinglist: $everyoneWatchinglist, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HotNewStateCopyWith<$Res>  {
  factory $HotNewStateCopyWith(HotNewState value, $Res Function(HotNewState) _then) = _$HotNewStateCopyWithImpl;
@useResult
$Res call({
 List<HotAndNewData> commingSoonlist, List<HotAndNewData> everyoneWatchinglist, bool isLoading, bool isError
});




}
/// @nodoc
class _$HotNewStateCopyWithImpl<$Res>
    implements $HotNewStateCopyWith<$Res> {
  _$HotNewStateCopyWithImpl(this._self, this._then);

  final HotNewState _self;
  final $Res Function(HotNewState) _then;

/// Create a copy of HotNewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commingSoonlist = null,Object? everyoneWatchinglist = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
commingSoonlist: null == commingSoonlist ? _self.commingSoonlist : commingSoonlist // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyoneWatchinglist: null == everyoneWatchinglist ? _self.everyoneWatchinglist : everyoneWatchinglist // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements HotNewState {
  const _Initial({required final  List<HotAndNewData> commingSoonlist, required final  List<HotAndNewData> everyoneWatchinglist, required this.isLoading, required this.isError}): _commingSoonlist = commingSoonlist,_everyoneWatchinglist = everyoneWatchinglist;
  

 final  List<HotAndNewData> _commingSoonlist;
@override List<HotAndNewData> get commingSoonlist {
  if (_commingSoonlist is EqualUnmodifiableListView) return _commingSoonlist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_commingSoonlist);
}

 final  List<HotAndNewData> _everyoneWatchinglist;
@override List<HotAndNewData> get everyoneWatchinglist {
  if (_everyoneWatchinglist is EqualUnmodifiableListView) return _everyoneWatchinglist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_everyoneWatchinglist);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of HotNewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._commingSoonlist, _commingSoonlist)&&const DeepCollectionEquality().equals(other._everyoneWatchinglist, _everyoneWatchinglist)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_commingSoonlist),const DeepCollectionEquality().hash(_everyoneWatchinglist),isLoading,isError);

@override
String toString() {
  return 'HotNewState(commingSoonlist: $commingSoonlist, everyoneWatchinglist: $everyoneWatchinglist, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HotNewStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<HotAndNewData> commingSoonlist, List<HotAndNewData> everyoneWatchinglist, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HotNewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commingSoonlist = null,Object? everyoneWatchinglist = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
commingSoonlist: null == commingSoonlist ? _self._commingSoonlist : commingSoonlist // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,everyoneWatchinglist: null == everyoneWatchinglist ? _self._everyoneWatchinglist : everyoneWatchinglist // ignore: cast_nullable_to_non_nullable
as List<HotAndNewData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
