// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FastLaughEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent()';
}


}

/// @nodoc
class $FastLaughEventCopyWith<$Res>  {
$FastLaughEventCopyWith(FastLaughEvent _, $Res Function(FastLaughEvent) __);
}


/// @nodoc


class Initialize implements FastLaughEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent.initialize()';
}


}




/// @nodoc


class LikeVideo implements FastLaughEvent {
  const LikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeVideoCopyWith<LikeVideo> get copyWith => _$LikeVideoCopyWithImpl<LikeVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.likeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $LikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $LikeVideoCopyWith(LikeVideo value, $Res Function(LikeVideo) _then) = _$LikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LikeVideoCopyWithImpl<$Res>
    implements $LikeVideoCopyWith<$Res> {
  _$LikeVideoCopyWithImpl(this._self, this._then);

  final LikeVideo _self;
  final $Res Function(LikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UnLikeVideo implements FastLaughEvent {
  const UnLikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnLikeVideoCopyWith<UnLikeVideo> get copyWith => _$UnLikeVideoCopyWithImpl<UnLikeVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnLikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.unLikeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $UnLikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $UnLikeVideoCopyWith(UnLikeVideo value, $Res Function(UnLikeVideo) _then) = _$UnLikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$UnLikeVideoCopyWithImpl<$Res>
    implements $UnLikeVideoCopyWith<$Res> {
  _$UnLikeVideoCopyWithImpl(this._self, this._then);

  final UnLikeVideo _self;
  final $Res Function(UnLikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(UnLikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FastLaughState {

 List<Downloads> get videoList; bool get isLoading; bool get isError;
/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FastLaughStateCopyWith<FastLaughState> get copyWith => _$FastLaughStateCopyWithImpl<FastLaughState>(this as FastLaughState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughState&&const DeepCollectionEquality().equals(other.videoList, videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(videoList),isLoading,isError);

@override
String toString() {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $FastLaughStateCopyWith<$Res>  {
  factory $FastLaughStateCopyWith(FastLaughState value, $Res Function(FastLaughState) _then) = _$FastLaughStateCopyWithImpl;
@useResult
$Res call({
 List<Downloads> videoList, bool isLoading, bool isError
});




}
/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._self, this._then);

  final FastLaughState _self;
  final $Res Function(FastLaughState) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
videoList: null == videoList ? _self.videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Initial implements FastLaughState {
  const _Initial({required final  List<Downloads> videoList, required this.isLoading, required this.isError}): _videoList = videoList;
  

 final  List<Downloads> _videoList;
@override List<Downloads> get videoList {
  if (_videoList is EqualUnmodifiableListView) return _videoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._videoList, _videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videoList),isLoading,isError);

@override
String toString() {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $FastLaughStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Downloads> videoList, bool isLoading, bool isError
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_Initial(
videoList: null == videoList ? _self._videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<Downloads>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
