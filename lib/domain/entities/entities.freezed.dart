// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageEntity {

 String get role; String get content;
/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<MessageEntity> get copyWith => _$MessageEntityCopyWithImpl<MessageEntity>(this as MessageEntity, _$identity);

  /// Serializes this MessageEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEntity&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'MessageEntity(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class $MessageEntityCopyWith<$Res>  {
  factory $MessageEntityCopyWith(MessageEntity value, $Res Function(MessageEntity) _then) = _$MessageEntityCopyWithImpl;
@useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._self, this._then);

  final MessageEntity _self;
  final $Res Function(MessageEntity) _then;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageEntity].
extension MessageEntityPatterns on MessageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
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
case _MessageEntity() when $default != null:
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
case _MessageEntity():
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
case _MessageEntity() when $default != null:
return $default(_that.role,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageEntity implements MessageEntity {
  const _MessageEntity({this.role = 'assistant', required this.content});
  factory _MessageEntity.fromJson(Map<String, dynamic> json) => _$MessageEntityFromJson(json);

@override@JsonKey() final  String role;
@override final  String content;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageEntityCopyWith<_MessageEntity> get copyWith => __$MessageEntityCopyWithImpl<_MessageEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageEntity&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'MessageEntity(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MessageEntityCopyWith<$Res> implements $MessageEntityCopyWith<$Res> {
  factory _$MessageEntityCopyWith(_MessageEntity value, $Res Function(_MessageEntity) _then) = __$MessageEntityCopyWithImpl;
@override @useResult
$Res call({
 String role, String content
});




}
/// @nodoc
class __$MessageEntityCopyWithImpl<$Res>
    implements _$MessageEntityCopyWith<$Res> {
  __$MessageEntityCopyWithImpl(this._self, this._then);

  final _MessageEntity _self;
  final $Res Function(_MessageEntity) _then;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,}) {
  return _then(_MessageEntity(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ChoicesEntity {

 int get index; MessageEntity get message; String? get logprobs; String? get finishReason;
/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoicesEntityCopyWith<ChoicesEntity> get copyWith => _$ChoicesEntityCopyWithImpl<ChoicesEntity>(this as ChoicesEntity, _$identity);

  /// Serializes this ChoicesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoicesEntity&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.logprobs, logprobs) || other.logprobs == logprobs)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,logprobs,finishReason);

@override
String toString() {
  return 'ChoicesEntity(index: $index, message: $message, logprobs: $logprobs, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class $ChoicesEntityCopyWith<$Res>  {
  factory $ChoicesEntityCopyWith(ChoicesEntity value, $Res Function(ChoicesEntity) _then) = _$ChoicesEntityCopyWithImpl;
@useResult
$Res call({
 int index, MessageEntity message, String? logprobs, String? finishReason
});


$MessageEntityCopyWith<$Res> get message;

}
/// @nodoc
class _$ChoicesEntityCopyWithImpl<$Res>
    implements $ChoicesEntityCopyWith<$Res> {
  _$ChoicesEntityCopyWithImpl(this._self, this._then);

  final ChoicesEntity _self;
  final $Res Function(ChoicesEntity) _then;

/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? message = null,Object? logprobs = freezed,Object? finishReason = freezed,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as String?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res> get message {
  
  return $MessageEntityCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChoicesEntity].
extension ChoicesEntityPatterns on ChoicesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChoicesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChoicesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChoicesEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChoicesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChoicesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChoicesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  MessageEntity message,  String? logprobs,  String? finishReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChoicesEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  MessageEntity message,  String? logprobs,  String? finishReason)  $default,) {final _that = this;
switch (_that) {
case _ChoicesEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  MessageEntity message,  String? logprobs,  String? finishReason)?  $default,) {final _that = this;
switch (_that) {
case _ChoicesEntity() when $default != null:
return $default(_that.index,_that.message,_that.logprobs,_that.finishReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChoicesEntity implements ChoicesEntity {
  const _ChoicesEntity({required this.index, required this.message, this.logprobs, this.finishReason});
  factory _ChoicesEntity.fromJson(Map<String, dynamic> json) => _$ChoicesEntityFromJson(json);

@override final  int index;
@override final  MessageEntity message;
@override final  String? logprobs;
@override final  String? finishReason;

/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoicesEntityCopyWith<_ChoicesEntity> get copyWith => __$ChoicesEntityCopyWithImpl<_ChoicesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChoicesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChoicesEntity&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.logprobs, logprobs) || other.logprobs == logprobs)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,logprobs,finishReason);

@override
String toString() {
  return 'ChoicesEntity(index: $index, message: $message, logprobs: $logprobs, finishReason: $finishReason)';
}


}

/// @nodoc
abstract mixin class _$ChoicesEntityCopyWith<$Res> implements $ChoicesEntityCopyWith<$Res> {
  factory _$ChoicesEntityCopyWith(_ChoicesEntity value, $Res Function(_ChoicesEntity) _then) = __$ChoicesEntityCopyWithImpl;
@override @useResult
$Res call({
 int index, MessageEntity message, String? logprobs, String? finishReason
});


@override $MessageEntityCopyWith<$Res> get message;

}
/// @nodoc
class __$ChoicesEntityCopyWithImpl<$Res>
    implements _$ChoicesEntityCopyWith<$Res> {
  __$ChoicesEntityCopyWithImpl(this._self, this._then);

  final _ChoicesEntity _self;
  final $Res Function(_ChoicesEntity) _then;

/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? message = null,Object? logprobs = freezed,Object? finishReason = freezed,}) {
  return _then(_ChoicesEntity(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as String?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChoicesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res> get message {
  
  return $MessageEntityCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$ResponseEntity {

 String? get id; String? get object; DateTime? get created; String? get provider; String get model; List<ChoicesEntity> get choices;
/// Create a copy of ResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseEntityCopyWith<ResponseEntity> get copyWith => _$ResponseEntityCopyWithImpl<ResponseEntity>(this as ResponseEntity, _$identity);

  /// Serializes this ResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,provider,model,const DeepCollectionEquality().hash(choices));

@override
String toString() {
  return 'ResponseEntity(id: $id, object: $object, created: $created, provider: $provider, model: $model, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $ResponseEntityCopyWith<$Res>  {
  factory $ResponseEntityCopyWith(ResponseEntity value, $Res Function(ResponseEntity) _then) = _$ResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? object, DateTime? created, String? provider, String model, List<ChoicesEntity> choices
});




}
/// @nodoc
class _$ResponseEntityCopyWithImpl<$Res>
    implements $ResponseEntityCopyWith<$Res> {
  _$ResponseEntityCopyWithImpl(this._self, this._then);

  final ResponseEntity _self;
  final $Res Function(ResponseEntity) _then;

/// Create a copy of ResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? object = freezed,Object? created = freezed,Object? provider = freezed,Object? model = null,Object? choices = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChoicesEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseEntity].
extension ResponseEntityPatterns on ResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? object,  DateTime? created,  String? provider,  String model,  List<ChoicesEntity> choices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? object,  DateTime? created,  String? provider,  String model,  List<ChoicesEntity> choices)  $default,) {final _that = this;
switch (_that) {
case _ResponseEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? object,  DateTime? created,  String? provider,  String model,  List<ChoicesEntity> choices)?  $default,) {final _that = this;
switch (_that) {
case _ResponseEntity() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.provider,_that.model,_that.choices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseEntity implements ResponseEntity {
  const _ResponseEntity({this.id, this.object, this.created, this.provider, this.model = 'sonar', required final  List<ChoicesEntity> choices}): _choices = choices;
  factory _ResponseEntity.fromJson(Map<String, dynamic> json) => _$ResponseEntityFromJson(json);

@override final  String? id;
@override final  String? object;
@override final  DateTime? created;
@override final  String? provider;
@override@JsonKey() final  String model;
 final  List<ChoicesEntity> _choices;
@override List<ChoicesEntity> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of ResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseEntityCopyWith<_ResponseEntity> get copyWith => __$ResponseEntityCopyWithImpl<_ResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._choices, _choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,provider,model,const DeepCollectionEquality().hash(_choices));

@override
String toString() {
  return 'ResponseEntity(id: $id, object: $object, created: $created, provider: $provider, model: $model, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$ResponseEntityCopyWith<$Res> implements $ResponseEntityCopyWith<$Res> {
  factory _$ResponseEntityCopyWith(_ResponseEntity value, $Res Function(_ResponseEntity) _then) = __$ResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? object, DateTime? created, String? provider, String model, List<ChoicesEntity> choices
});




}
/// @nodoc
class __$ResponseEntityCopyWithImpl<$Res>
    implements _$ResponseEntityCopyWith<$Res> {
  __$ResponseEntityCopyWithImpl(this._self, this._then);

  final _ResponseEntity _self;
  final $Res Function(_ResponseEntity) _then;

/// Create a copy of ResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? object = freezed,Object? created = freezed,Object? provider = freezed,Object? model = null,Object? choices = null,}) {
  return _then(_ResponseEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,object: freezed == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<ChoicesEntity>,
  ));
}


}

// dart format on
