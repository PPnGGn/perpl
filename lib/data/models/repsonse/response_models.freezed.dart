// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel {

 String? get id; String? get object; int? get created; String? get provider; String get model; List<ChoicesModel> get choices;
/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseModelCopyWith<ResponseModel> get copyWith => _$ResponseModelCopyWithImpl<ResponseModel>(this as ResponseModel, _$identity);

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,provider,model,const DeepCollectionEquality().hash(choices));

@override
String toString() {
  return 'ResponseModel(id: $id, object: $object, created: $created, provider: $provider, model: $model, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<$Res>  {
  factory $ResponseModelCopyWith(ResponseModel value, $Res Function(ResponseModel) _then) = _$ResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? object, int? created, String? provider, String model, List<ChoicesModel> choices
});




}
/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel _self;
  final $Res Function(ResponseModel) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? object = freezed,Object? created = freezed,Object? provider = freezed,Object? model = null,Object? choices = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChoicesModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseModel].
extension ResponseModelPatterns on ResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? object,  int? created,  String? provider,  String model,  List<ChoicesModel> choices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.provider,_that.model,_that.choices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? object,  int? created,  String? provider,  String model,  List<ChoicesModel> choices)  $default,) {final _that = this;
switch (_that) {
case _ResponseModel():
return $default(_that.id,_that.object,_that.created,_that.provider,_that.model,_that.choices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? object,  int? created,  String? provider,  String model,  List<ChoicesModel> choices)?  $default,) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.provider,_that.model,_that.choices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseModel extends ResponseModel {
  const _ResponseModel({this.id, this.object, this.created, this.provider, this.model = 'sonar', required final  List<ChoicesModel> choices}): _choices = choices,super._();
  factory _ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);

@override final  String? id;
@override final  String? object;
@override final  int? created;
@override final  String? provider;
@override@JsonKey() final  String model;
 final  List<ChoicesModel> _choices;
@override List<ChoicesModel> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseModelCopyWith<_ResponseModel> get copyWith => __$ResponseModelCopyWithImpl<_ResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._choices, _choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,provider,model,const DeepCollectionEquality().hash(_choices));

@override
String toString() {
  return 'ResponseModel(id: $id, object: $object, created: $created, provider: $provider, model: $model, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$ResponseModelCopyWith<$Res> implements $ResponseModelCopyWith<$Res> {
  factory _$ResponseModelCopyWith(_ResponseModel value, $Res Function(_ResponseModel) _then) = __$ResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? object, int? created, String? provider, String model, List<ChoicesModel> choices
});




}
/// @nodoc
class __$ResponseModelCopyWithImpl<$Res>
    implements _$ResponseModelCopyWith<$Res> {
  __$ResponseModelCopyWithImpl(this._self, this._then);

  final _ResponseModel _self;
  final $Res Function(_ResponseModel) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? object = freezed,Object? created = freezed,Object? provider = freezed,Object? model = null,Object? choices = null,}) {
  return _then(_ResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChoicesModel>,
  ));
}


}


/// @nodoc
mixin _$ChoicesModel {

 int get index; MessageModel get message; String? get logprobs; String? get finishReason;
/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoicesModelCopyWith<ChoicesModel> get copyWith => _$ChoicesModelCopyWithImpl<ChoicesModel>(this as ChoicesModel, _$identity);

  /// Serializes this ChoicesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoicesModel&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.logprobs, logprobs) || other.logprobs == logprobs)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,logprobs,finishReason);

@override
String toString() {
  return 'ChoicesModel(index: $index, message: $message, logprobs: $logprobs, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class $ChoicesModelCopyWith<$Res>  {
  factory $ChoicesModelCopyWith(ChoicesModel value, $Res Function(ChoicesModel) _then) = _$ChoicesModelCopyWithImpl;
@useResult
$Res call({
 int index, MessageModel message, String? logprobs, String? finishReason
});


$MessageModelCopyWith<$Res> get message;

}
/// @nodoc
class _$ChoicesModelCopyWithImpl<$Res>
    implements $ChoicesModelCopyWith<$Res> {
  _$ChoicesModelCopyWithImpl(this._self, this._then);

  final ChoicesModel _self;
  final $Res Function(ChoicesModel) _then;

/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? message = null,Object? logprobs = freezed,Object? finishReason = freezed,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageModel,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as String?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageModelCopyWith<$Res> get message {
  
  return $MessageModelCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChoicesModel].
extension ChoicesModelPatterns on ChoicesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChoicesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChoicesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChoicesModel value)  $default,){
final _that = this;
switch (_that) {
case _ChoicesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChoicesModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChoicesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  MessageModel message,  String? logprobs,  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChoicesModel() when $default != null:
return $default(_that.index,_that.message,_that.logprobs,_that.finishReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  MessageModel message,  String? logprobs,  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _ChoicesModel():
return $default(_that.index,_that.message,_that.logprobs,_that.finishReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  MessageModel message,  String? logprobs,  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _ChoicesModel() when $default != null:
return $default(_that.index,_that.message,_that.logprobs,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChoicesModel extends ChoicesModel {
  const _ChoicesModel({required this.index, required this.message, this.logprobs, this.finishReason}): super._();
  factory _ChoicesModel.fromJson(Map<String, dynamic> json) => _$ChoicesModelFromJson(json);

@override final  int index;
@override final  MessageModel message;
@override final  String? logprobs;
@override final  String? finishReason;

/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoicesModelCopyWith<_ChoicesModel> get copyWith => __$ChoicesModelCopyWithImpl<_ChoicesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoicesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChoicesModel&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.logprobs, logprobs) || other.logprobs == logprobs)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,logprobs,finishReason);

@override
String toString() {
  return 'ChoicesModel(index: $index, message: $message, logprobs: $logprobs, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$ChoicesModelCopyWith<$Res> implements $ChoicesModelCopyWith<$Res> {
  factory _$ChoicesModelCopyWith(_ChoicesModel value, $Res Function(_ChoicesModel) _then) = __$ChoicesModelCopyWithImpl;
@override @useResult
$Res call({
 int index, MessageModel message, String? logprobs, String? finishReason
});


@override $MessageModelCopyWith<$Res> get message;

}
/// @nodoc
class __$ChoicesModelCopyWithImpl<$Res>
    implements _$ChoicesModelCopyWith<$Res> {
  __$ChoicesModelCopyWithImpl(this._self, this._then);

  final _ChoicesModel _self;
  final $Res Function(_ChoicesModel) _then;

/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? message = null,Object? logprobs = freezed,Object? finishReason = freezed,}) {
  return _then(_ChoicesModel(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageModel,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as String?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChoicesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageModelCopyWith<$Res> get message {
  
  return $MessageModelCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$MessageModel {

 String get role; String get content;
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageModelCopyWith<MessageModel> get copyWith => _$MessageModelCopyWithImpl<MessageModel>(this as MessageModel, _$identity);

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageModel&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'MessageModel(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class $MessageModelCopyWith<$Res>  {
  factory $MessageModelCopyWith(MessageModel value, $Res Function(MessageModel) _then) = _$MessageModelCopyWithImpl;
@useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class _$MessageModelCopyWithImpl<$Res>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._self, this._then);

  final MessageModel _self;
  final $Res Function(MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageModel].
extension MessageModelPatterns on MessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.role,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String content)  $default,) {final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that.role,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String content)?  $default,) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.role,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageModel extends MessageModel {
  const _MessageModel({this.role = 'assistant', required this.content}): super._();
  factory _MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

@override@JsonKey() final  String role;
@override final  String content;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageModelCopyWith<_MessageModel> get copyWith => __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageModel&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'MessageModel(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MessageModelCopyWith<$Res> implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(_MessageModel value, $Res Function(_MessageModel) _then) = __$MessageModelCopyWithImpl;
@override @useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class __$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(this._self, this._then);

  final _MessageModel _self;
  final $Res Function(_MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,}) {
  return _then(_MessageModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
